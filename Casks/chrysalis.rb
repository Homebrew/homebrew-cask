cask 'chrysalis' do
  version '0.7.7'
  sha256 '90decd69c206f0e55b66e47b414b17588379b607d5ccb14cdf448674d0474c42'

  url "https://github.com/keyboardio/Chrysalis/releases/download/chrysalis-#{version}/Chrysalis-#{version}.dmg"
  appcast 'https://github.com/keyboardio/Chrysalis/releases.atom'
  name 'Chrysalis'
  homepage 'https://github.com/keyboardio/Chrysalis'

  app 'Chrysalis.app'

  zap trash: [
               '~/Library/Application Support/chrysalis',
               '~/Library/Preferences/keyboardio.chrysalis.plist',
             ]
end
