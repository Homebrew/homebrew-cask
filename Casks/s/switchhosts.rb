cask "switchhosts" do
  arch arm: "aarch64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "1443343955edcee58b4c0618df622dc7f6790499ab3ac78b2a0f702f3869fba7",
         intel: "1ffcf789665112700444b491748254fb3d5d1f9dba2c8716413f37ea2d124438"

  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version}/SwitchHosts-#{version}-mac-#{arch}.dmg"
  name "SwitchHosts"
  desc "App to switch hosts"
  homepage "https://switchhosts.vercel.app/"

  livecheck do
    url :url
    regex(/^SwitchHosts[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  app "SwitchHosts.app"

  zap trash: [
    "~/.SwitchHosts",
    "~/Library/Application Support/SwitchHosts",
    "~/Library/Preferences/SwitchHosts.plist",
    "~/Library/Saved Application State/SwitchHosts.savedState",
  ]
end
