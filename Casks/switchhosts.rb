cask "switchhosts" do
  version "4.0.0.6029"
  sha256 "0745e449e15002e9afc3c326e1e78a165e761e00825fa02eef170c140a8e41db"

  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_#{version}.dmg",
      verified: "github.com/oldj/SwitchHosts/"
  name "SwitchHosts!"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{/SwitchHosts\._macOS_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SwitchHosts!.app"
end
