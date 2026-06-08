cask "switchhosts" do
  arch arm: "aarch64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "e04f5b61f85e321aa8a1d98573abc83c42f76af2c8bcd46968e946f052e5173a",
         intel: "99cf28a69bd6213d27d5405151e69c32b836969a6840c36f13c4078d3c480973"

  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version}/SwitchHosts-#{version}-mac-#{arch}.dmg",
      verified: "github.com/oldj/SwitchHosts/"
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
