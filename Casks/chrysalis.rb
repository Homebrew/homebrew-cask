cask 'chrysalis' do
  version '0.7.3'
  sha256 '91e88bd06baa749b870a2b404097a86fd80f200cef7e4e5e21412ee6d24be222'

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
