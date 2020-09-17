cask "switchhosts" do
  version "3.5.4.5517"
  sha256 "2f1db5872fda39aeecdc36fee351f29547e51b1627a8b4941b7bae72d12044b9"

  # github.com/oldj/SwitchHosts/ was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.dmg"
  appcast "https://github.com/oldj/SwitchHosts/releases.atom",
          must_contain: version.major_minor_patch
  name "SwitchHosts!"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  app "SwitchHosts!.app"
end
