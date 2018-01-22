cask 'royal-tsx' do
  version '3.2.6.1000'
  sha256 'd4fbf66b3feabaf256740100be50c68f165171c4d99442679cab764473addb69'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: 'd5c67b2c2920718fef67f85b65bed2982ed71aac259523bde24c330360a04b4f'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
