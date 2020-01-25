cask 'biscuit' do
  version '1.2.3'
  sha256 '7a640c7948c21149f163842d6fb8caba0ca040100a07008dcdf3b767c80fc832'

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
