cask 'jaxx-liberty' do
  version '2.2.3'
  sha256 '19c5f2cdd059b3c7dc3bd7b391addfe787ff7b502a907e32f755f2add87a86d7'

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
