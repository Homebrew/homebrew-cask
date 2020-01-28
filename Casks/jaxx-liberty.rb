cask 'jaxx-liberty' do
  version '2.3.8'
  sha256 '6e6901c5c7a9bb796a3d189d092259ccd4107ca6a34b9b299090c3c4310d594b'

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
