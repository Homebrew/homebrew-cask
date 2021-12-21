cask "switchhosts" do
  version "4.1.0.6076"

  if Hardware::CPU.intel?
    sha256 "ba0e47d5d255f610a578641306d6aa8f13797d2b8da86c3b04ca08cccd774886"
    url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_mac_x64_#{version}.dmg",
        verified: "github.com/oldj/SwitchHosts/"
  else
    sha256 "f7360db875930fb4065970bbab274aea98218ce2d2c85c833cd42cd03a10bdc2"
    url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_mac_arm64_#{version}.dmg",
        verified: "github.com/oldj/SwitchHosts/"
  end

  name "SwitchHosts"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{/SwitchHosts_installer_(\d+(?:\.\d+)*)\.exe}i)
  end

  app "SwitchHosts.app"

  zap trash: [
    "~/Library/Application Support/SwitchHosts",
    "~/Library/Preferences/SwitchHosts.plist",
    "~/Library/Saved Application State/SwitchHosts.savedState",
    "~/.SwitchHosts",
  ]
end
