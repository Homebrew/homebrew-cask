cask "switchhosts" do
  version "3.5.6.5551"
  sha256 "600a19939862160daee29747d6c9d41275bd1d6aa8ad9ec52aec29c2b62e6c9f"

  # github.com/oldj/SwitchHosts/ was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts._macOS_#{version}.dmg"
  appcast "https://github.com/oldj/SwitchHosts/releases.atom",
          must_contain: version.major_minor_patch
  name "SwitchHosts!"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  app "SwitchHosts!.app"
end
