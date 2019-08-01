cask 'jaxx-liberty' do
  version '2.2.2'
  sha256 '012c10ed305bff56684c867a8f24fcfcc0892ae05033404e8f57e09c2dd6957c'

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
