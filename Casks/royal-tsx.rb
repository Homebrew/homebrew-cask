cask 'royal-tsx' do
  version '3.2.8.1000'
  sha256 '422e5aaff2f790a99537380462463c6c49079a22b1119de4903900b0662fcbfc'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '3708e9eeb6393e07704228173a64f2a1bb38cd7280f46e8f6f904cd4b1fca827'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
