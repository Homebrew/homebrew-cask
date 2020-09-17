cask "quip" do
  version "7.18.0"
  sha256 "3b057b3b1d2126487049e4576d54679415515b466eae7a7ee53bc9eaa8698bec"

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
