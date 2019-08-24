cask 'chrysalis' do
  version '0.6.2'
  sha256 'feae2a3cca2330db8cff076603c7d82d398842659059ffec4f3b9fc0a9537c4f'

  # github.com/keyboardio/Chrysalis was verified as official when first introduced to the cask
  url "https://github.com/keyboardio/Chrysalis/releases/download/chrysalis-#{version}/Chrysalis-#{version}.dmg" 
  name 'Chrysalis'
  homepage 'https://github.com/keyboardio/Chrysalis'
  appcast 'https://github.com/keyboardio/Chrysalis/releases.atom'

  app 'Chrysalis.app'

  zap trash: [
               '~/Library/Application Support/chrysalis',
               '~/Library/Preferences/keyboardio.chrysalis.plist',
             ]
end
