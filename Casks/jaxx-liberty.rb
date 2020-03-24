cask 'jaxx-liberty' do
  version '2.4.0'
  sha256 '8783e1d18fb4739875ae3622b2cf02d7870d6d996cb338b9cb28bd020d16b6a0'

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
