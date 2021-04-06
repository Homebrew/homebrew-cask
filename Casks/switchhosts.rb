cask "switchhosts" do
  version "3.5.8.5556"
  sha256 "62cfdd4273e5b0213f26319917c4a3b860433f82114cc07efd0ad4db68431f4e"

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
