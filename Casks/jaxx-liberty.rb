cask 'jaxx-liberty' do
  version '2.4.4'
  sha256 '8b73328c09336c661b2a6ecf3ab9663caa75c61f3d4b13eb0e8198f3f0f8b102'

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
