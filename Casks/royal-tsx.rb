cask 'royal-tsx' do
  version '3.2.1.1000'
  sha256 'f0477253d7f6238ead49d0ae16ebde768c0ef9ec9037a5c2c7680e517d4ac66d'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '0d5e81e502cbae63bf0b3414115b29efb3c09c82c70343251dbaaa6dc9eef363'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
