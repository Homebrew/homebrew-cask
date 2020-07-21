cask 'jaxx-liberty' do
  version '2.4.5'
  sha256 '4175a0ec073bac64b7ef5e3e4ba4b762735be1586928d7adaba251d019553fe0'

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
