cask 'bitwig-studio' do
  version '2.4'
  sha256 '17cc4d957bb787f8419c0482f42d7b3a2b381bc45966a8c3c9b3a2c2649b3022'

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
