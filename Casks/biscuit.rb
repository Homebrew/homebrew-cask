cask 'biscuit' do
  version '1.2.5'
  sha256 'd1d2fa6263086958b58e8fab89c1b8ea64cbc69ce915216e5fccb8bd161a5835'

  # github.com/agata/dl.biscuit was verified as official when first introduced to the cask
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
