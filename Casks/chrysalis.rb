cask 'chrysalis' do
  version '0.7.1'
  sha256 '1fbbaabbdd49302e23dc94022afd038bfcb1612ac85ec020eaf15941764a8bb4'

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
