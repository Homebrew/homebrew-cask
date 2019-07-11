cask 'bitwig-studio' do
  version '3.0'
  sha256 '4a90ac09c03f14a80e7973af1be01dd09a7f165c52fbe22d83b4a2ff50d83eb6'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  appcast 'https://www.bitwig.com/en/download.html'
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com/'

  app 'Bitwig Studio.app'

  zap trash: [
               '~/Library/Application Support/Bitwig',
               '~/Library/Caches/Bitwig',
               '~/Library/Logs/Bitwig',
             ]
end
