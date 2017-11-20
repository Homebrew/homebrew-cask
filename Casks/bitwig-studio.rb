cask 'bitwig-studio' do
  version '2.1.3'
  sha256 '623e3ae9d988e11f1a97fe8098f4c05a2f541f813209c8cb210803f8b575f58b'

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
