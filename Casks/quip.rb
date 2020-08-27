cask "quip" do
  version "7.17.1"
  sha256 "dea20aca2a3a4c958461bc26c33dee27aa25efef381fa0fda9d836196de7e0b0"

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
