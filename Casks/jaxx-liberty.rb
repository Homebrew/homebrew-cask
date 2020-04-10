cask 'jaxx-liberty' do
  version '2.4.1'
  sha256 '941a96226a4c3d73fafd5b8063b3455df1ecff9a366d2b7f6118838a886a8684'

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
