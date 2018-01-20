cask 'ridibooks' do
  version '2.3.0'
  sha256 'f62343cb25fe4ba2ab0b076c53a4623bbe2c81d723263fff7d74ca3b87610a02'

  url "https://viewer-ota.ridibooks.com/mac/ridibooks-#{version}.dmg"
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
