cask "switchhosts" do
  version "3.5.5.5541"
  sha256 "ad408c68d066674768591414724840d1076a3a88ac38f0c0e29dd399d6230925"

  # github.com/oldj/SwitchHosts/ was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.dmg"
  appcast "https://github.com/oldj/SwitchHosts/releases.atom",
          must_contain: version.major_minor_patch
  name "SwitchHosts!"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  app "SwitchHosts!.app"
end
