cask 'ridibooks' do
  version '2.5.3'
  sha256 '51020bb7d36ed6af245591d6a653aa1d5d253ed9203598d87857059669b553d3'

  url "https://viewer-ota.ridibooks.com/mac/ridibooks-#{version}.dmg"
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
