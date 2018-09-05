cask 'ridibooks' do
  version '2.5.2'
  sha256 'c02c59e6c655c101401c5981d8a02d028853b4d0ee2785d2c3986b27b595c199'

  url "https://viewer-ota.ridibooks.com/mac/ridibooks-#{version}.dmg"
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
