cask 'royal-tsx' do
  version '3.2.3.1000'
  sha256 '43f87aa4538ca192375f121b62d13084f05216482e3f0d6338b140b48f35eb42'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '9db91197bb248345860089790019753251ee930bebd5389a1ffafb3bf47602e3'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
