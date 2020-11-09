cask "quip" do
  version "7.24.5"
  sha256 "7fc6f382c4782e4734816caef09905d25bad7380d550c308d73b6c3f3c06fee0"

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
