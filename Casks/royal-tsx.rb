cask 'royal-tsx' do
  version '3.2.9.3'
  sha256 '025fab646227d280df9667a64f227337f8f774747c9e81737efe409b23355365'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '3708e9eeb6393e07704228173a64f2a1bb38cd7280f46e8f6f904cd4b1fca827'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
