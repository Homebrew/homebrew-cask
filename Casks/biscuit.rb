cask 'biscuit' do
  version '1.2.4'
  sha256 '5b11a54fa7fab605500ef5e63e088a9114d643ad4ed67c734e84d02b6bab67d0'

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
