cask 'jaxx-liberty' do
  version '2.3.5'
  sha256 'c4642230505d6017148937c6bd23d211b3e1f23e42fdd4fd4d0bf13ba818e978'

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
