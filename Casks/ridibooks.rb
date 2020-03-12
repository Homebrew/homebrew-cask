cask 'ridibooks' do
  version '0.7.9'
  sha256 '189e72c8ec1346804b88bde857a7d837051e844af83712ea9b4456138773f12d'

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
