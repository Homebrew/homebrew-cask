cask 'jaxx-liberty' do
  version '2.3.4'
  sha256 '4571a3a3f75b3bedd18ec3fe59d97d073b06804f9fd2d46174b6487b88f00279'

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
