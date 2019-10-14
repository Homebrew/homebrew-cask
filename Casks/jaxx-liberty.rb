cask 'jaxx-liberty' do
  version '2.2.8'
  sha256 'fb7df891cf65c8037c265ff5ab0405b00714f3e6336f84ca56dece027cb0523b'

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
