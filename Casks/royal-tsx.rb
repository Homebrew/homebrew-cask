cask 'royal-tsx' do
  version '3.3.2.1000'
  sha256 'e93793191c0e93078ef2025ec02cd84fad3cb8f7b554f6b86d89dd4b2ca0a622'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
