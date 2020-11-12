cask "royal-tsx" do
  version "4.3.5.1000"
  sha256 "2aaf3728de83e7fdd9143ef6041fa3574cb8156d3b3a7f5932d869cdeda04c61"

  # https://royaltsx-v4.royalapplications.com/ was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name "Royal TSX"
  homepage "https://www.royalapplications.com/ts/mac/features"

  auto_updates :yes

  app "Royal TSX.app"
end
