cask 'royal-tsx' do
  version '4.3.1.1000'
  sha256 'f8c58070eb021c6486e3a5ccdb64c701cee958b846fd3d94c51a7f14b0cf82e8'

  # https://royaltsx-v4.royalapplications.com/ was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  auto_updates :yes

  app 'Royal TSX.app'
end
