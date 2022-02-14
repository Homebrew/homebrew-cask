cask "switchhosts" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  version "4.1.1.6077"

  if Hardware::CPU.intel?
    sha256 "c1997049a9721cedd9bedcf031f91c46b06b1abe502b34dc2408906df10c9b30"
  else
    sha256 "15dc0715559be2bb0d1252d27deba8fd1f23cb9be53a492b1da5e4bb4afa436d"
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
