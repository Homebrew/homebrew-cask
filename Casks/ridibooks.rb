cask 'ridibooks' do
  version '2.4.1'
  sha256 '45861f50740eda1aba31a75de973b43a0eee29bdf644af70626d4fcfb518cbcf'

  url "https://viewer-ota.ridibooks.com/mac/ridibooks-#{version}.dmg"
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
