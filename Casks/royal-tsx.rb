cask 'royal-tsx' do
  version '3.3.0.1000'
  sha256 '825e17a500940848b35cf48696bb7cb50ba56be4d408f46403bc5d0a9988d5e1'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
