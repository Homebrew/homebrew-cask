cask 'jaxx-liberty' do
  version '2.1.2'
  sha256 '1e8e156af8be06ed760c30d4472729555c9c269699cb6da4a29b2e84b8c98617'

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
