cask 'jaxx-liberty' do
  version '2.3.6'
  sha256 '47483540de269cd2a5e20ff2cb56725f2b9eba7d7ee5653f499996d29781c2ab'

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
