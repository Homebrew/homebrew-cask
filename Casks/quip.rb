cask "quip" do
  version "7.22.0"
  sha256 "607212b52acfccef5cc976df902cdff6c9c57fa1adb304eef843649c8639f88e"

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
