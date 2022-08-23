cask "switchhosts" do
  arch arm: "arm64", intel: "x64"

  version "4.1.2.6086"
  sha256 arm:   "85c2918308c849c3f70de5436b0e597107e925283c925e7d9b69496c26f31466",
         intel: "8a8556ca83496ffd965af493a139e84cec25c38e9f64eb26f1a134a621bc9ec3"

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
