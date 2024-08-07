cask "switchhosts" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0.6119"
  sha256 arm:   "28491e01af40f1f9e4b7032177cdb39b6af1cc92813958c6820c1a1758fda611",
         intel: "71e1ac2fd425a80fc6ad290b2849c3f1bda8fe385d4f3f9cd205ddf0be7ddc32"

  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_mac_#{arch}_#{version}.dmg",
      verified: "github.com/oldj/SwitchHosts/"
  name "SwitchHosts"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  livecheck do
    url :url
    regex(/^SwitchHosts_mac_#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "SwitchHosts.app"

  zap trash: [
    "~/.SwitchHosts",
    "~/Library/Application Support/SwitchHosts",
    "~/Library/Preferences/SwitchHosts.plist",
    "~/Library/Saved Application State/SwitchHosts.savedState",
  ]
end
