cask 'jaxx-liberty' do
  version '2.3.7'
  sha256 '2611ef7485447fd53c1ad46551cc3e0ef23bcddbfaecd725a283b99bb4a91a95'

  url "https://download-liberty.jaxx.io/Jaxx.Liberty-#{version}.dmg"
  appcast 'https://jaxx.io/downloads.html'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx Liberty.app'

  zap trash: [
               '~/Library/Application Support/jaxx',
               '~/Library/Logs/jaxx',
             ]
end
