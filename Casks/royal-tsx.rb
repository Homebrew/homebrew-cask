cask "royal-tsx" do
  version "4.3.4.1000"
  sha256 "4bba51b35d02b967e72a58d296bdee8b8cc2d480e1503e068fe5f8b132f96d48"

  # https://royaltsx-v4.royalapplications.com/ was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name "Royal TSX"
  homepage "https://www.royalapplications.com/ts/mac/features"

  auto_updates :yes

  app "Royal TSX.app"
end
