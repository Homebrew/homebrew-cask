cask 'ridibooks' do
  version '0.7.5'
  sha256 'e42f85cb33dc007023ef426ebb551f68dbb0ca798146db3c73e666e477832b9a'

  # viewer-ota.ridicdn.net/pc_electron was verified as official when first introduced to the cask
  url "https://viewer-ota.ridicdn.net/pc_electron/Ridibooks-#{version}.dmg"
  appcast 'https://s3-ap-northeast-2.amazonaws.com/viewer-ota.ridicdn.net/pc_electron/latest-mac.yml'
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  depends_on macos: '>= :sierra'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
