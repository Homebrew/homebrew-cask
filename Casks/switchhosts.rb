cask "switchhosts" do
  version "4.0.1.6051"

  if Hardware::CPU.intel?
    sha256 "5777f55d3876abf0930c83b39c69d9a08d6ee779a197c7226900972f5ccf99fc"
    url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_#{version}.dmg",
        verified: "github.com/oldj/SwitchHosts/"
  else
    sha256 "6ebb0f04eea97f61c60e7b0c934f318ce8754f1183c73ea9fcdfe48a90ad252e"
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
