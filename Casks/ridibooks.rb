cask 'ridibooks' do
  version '2.5.5'
  sha256 '3cca39ed89f768cbd2f8b8f28240c271ea4e4927f8a7133fe13999ddc629f5c6'

  url "https://viewer-ota.ridibooks.com/mac/ridibooks-#{version}.dmg"
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
