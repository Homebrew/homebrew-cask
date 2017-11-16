cask 'royal-tsx' do
  version '3.2.4.1000'
  sha256 '1acd66150c364f9cb190ab3edeb15e1ec5890548f0d5a9a5de36a81e8bbfae57'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '247b521f045c7db2a2c3c3076ca73a59a79976164625d8c23827ebf0109a786d'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
