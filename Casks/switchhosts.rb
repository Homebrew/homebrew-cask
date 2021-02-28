cask "switchhosts" do
  version "3.5.7.5554"
  sha256 "e837625cf19d881e33ebffb9984fbaca7d9c74780d67767f0b015595b176c82d"

  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.dmg",
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
