cask "quip" do
  version "7.23.1"
  sha256 "59d460708f3936128ecd36198731dc7c55308570b1a4065ddb2a18b4d5d95d59"

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
