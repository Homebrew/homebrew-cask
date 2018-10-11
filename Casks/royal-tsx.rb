cask 'royal-tsx' do
  version '3.3.1.1000'
  sha256 '107d883fac452525cd7fd427dd057f1b3b8cb4058d6ebb113d7d835662c8a103'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
