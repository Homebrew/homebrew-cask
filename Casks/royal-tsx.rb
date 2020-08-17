cask "royal-tsx" do
  version "4.3.3.1000"
  sha256 "9e8c3b6f5f211b06bbc6e49e9e396a98bdc7cdb0c4973b5b29da1ae786cc8b3d"

  # https://royaltsx-v4.royalapplications.com/ was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name "Royal TSX"
  homepage "https://www.royalapplications.com/ts/mac/features"

  auto_updates :yes

  app "Royal TSX.app"
end
