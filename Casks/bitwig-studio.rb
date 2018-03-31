cask 'bitwig-studio' do
  version '2.3.2'
  sha256 '70b06ad500ee7cbc02a533cfe166ecf1e9acada72143ce8f7ea550235efbaf35'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com/'

  app 'Bitwig Studio.app'

  zap trash: [
               '~/Library/Application Support/Bitwig',
               '~/Library/Caches/Bitwig',
               '~/Library/Logs/Bitwig',
             ]
end
