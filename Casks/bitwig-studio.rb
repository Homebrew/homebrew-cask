cask 'bitwig-studio' do
  version '3.1.3'
  sha256 '1668af7dd60314bdbb1e06b8e4f56e666f1469c3b49d897b7120e46d8410fab0'

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
