cask 'jaxx-liberty' do
  version '2.2.0'
  sha256 '30b70ced0b60e78c973c63e4b415aa866eee4739763b76c52a0422c66d34bd40'

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
