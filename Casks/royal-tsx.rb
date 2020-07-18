cask 'royal-tsx' do
  version '4.3.2.1000'
  sha256 'eff9341dbf9a12c7f48eafd5dc4af62cc15bb70268093bb4f9f8ce8144137f16'

  # https://royaltsx-v4.royalapplications.com/ was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  auto_updates :yes

  app 'Royal TSX.app'
end
