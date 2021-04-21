cask "switchhosts" do
  version "4.0.0.6029"
  
  if Hardware::CPU.intel?
    sha256 "0745e449e15002e9afc3c326e1e78a165e761e00825fa02eef170c140a8e41db"
    url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_#{version}.dmg",
        verified: "github.com/oldj/SwitchHosts/"
  else
    sha256 "1f0cfe32b87f9133098604a68289db9f309af8374af9b9341b8d24393de354bf"
    url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_arm64_#{version}.dmg",
        verified: "github.com/oldj/SwitchHosts/"
  end
  
  name "SwitchHosts"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{/SwitchHosts_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SwitchHosts.app"
end
