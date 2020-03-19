cask 'royal-tsx' do
  version '4.3.0.1000'
  sha256 '6c9747604d5137457d59fc00fafa2c54ce7f71e17892325451263d5553f6dd24'

  # https://royaltsx-v4.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  auto_updates :yes

  app 'Royal TSX.app'
end
