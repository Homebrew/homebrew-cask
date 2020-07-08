cask 'biscuit' do
  version '1.2.8'
  sha256 'e12d53f85b3ba74b7897499b5cb2f8f9b98a87170497f4309c75e8bf2e7fa713'

  # github.com/agata/dl.biscuit/ was verified as official when first introduced to the cask
  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg"
  appcast 'https://github.com/agata/dl.biscuit/releases.atom'
  name 'Biscuit'
  homepage 'https://eatbiscuit.com/'

  auto_updates true

  app 'Biscuit.app'

  zap trash: [
               '~/Library/Application Support/Biscuit',
               '~/Library/Preferences/com.eatbiscuit.biscuit.plist',
             ]
end
