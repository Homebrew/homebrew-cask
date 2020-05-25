cask 'jaxx-liberty' do
  version '2.4.3'
  sha256 'f0225db3007a0e207fbdc908f601be97522cb69759665f2e5e5fdbac7115a179'

  url "https://download-liberty.jaxx.io/Jaxx.Liberty-#{version}.dmg"
  appcast 'https://jaxx.io/changeLog'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx Liberty.app'

  zap trash: [
               '~/Library/Application Support/jaxx',
               '~/Library/Logs/jaxx',
             ]
end
