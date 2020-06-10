cask 'chrysalis' do
  version '0.7.5'
  sha256 '0d96c3e05bc4e53dd74658fec531640771098f050480386c5411e11856cdfd0b'

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
