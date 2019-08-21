cask 'jaxx-liberty' do
  version '2.2.5'
  sha256 'cd51a6db3c7b3ba4d1d2bf74b5a4778b2a7dcc5da8228e4097fd53f8e125d5e7'

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
