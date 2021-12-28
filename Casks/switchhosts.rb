cask "switchhosts" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  version "4.1.0.6076"

  if Hardware::CPU.intel?
    sha256 "ba0e47d5d255f610a578641306d6aa8f13797d2b8da86c3b04ca08cccd774886"
  else
    sha256 "f7360db875930fb4065970bbab274aea98218ce2d2c85c833cd42cd03a10bdc2"
  end

  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_mac_#{arch}_#{version}.dmg",
      verified: "github.com/oldj/SwitchHosts/"
  name "SwitchHosts"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{/SwitchHosts_mac_#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "SwitchHosts.app"

  zap trash: [
    "~/Library/Application Support/SwitchHosts",
    "~/Library/Preferences/SwitchHosts.plist",
    "~/Library/Saved Application State/SwitchHosts.savedState",
    "~/.SwitchHosts",
  ]
end
