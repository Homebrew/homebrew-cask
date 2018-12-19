cask 'royal-tsx' do
  version '4.0.0.1000'
  sha256 'f480f83023f75272a203b4d9451a19ef5cd1a8909ebf30f94923ff4bf9cfad37'

  # https://royaltsx-v4.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
