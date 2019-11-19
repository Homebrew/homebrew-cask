cask 'jaxx-liberty' do
  version '2.3.2'
  sha256 '943b4fcdd9f909bfbec6758af2bea3dcdbc402f76e92feabf4659ce3ee811164'

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
