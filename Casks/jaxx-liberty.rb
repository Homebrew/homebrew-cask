cask 'jaxx-liberty' do
  version '2.1.3'
  sha256 'e8d4a04f5ab9fff469e289572149815f24f1ee484bd9178710184a37e8dfc06f'

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
