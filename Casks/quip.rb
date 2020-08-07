cask "quip" do
  version "7.16.0"
  sha256 "62c0aed2c85abca022d5a394c6eaebfcbaf47c60570afd0abc677c0b1c8cd7f4"

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
