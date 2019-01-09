cask 'jaxx-liberty' do
  version '2.1.1'
  sha256 'c2d9ad29629f547766bca8e0c963addda1c9c11786f2c2604fdbe24c0eebbf7d'

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
