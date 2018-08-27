cask 'bitwig-studio' do
  version '2.3.4'
  sha256 '15af31a4d310fca553d0ad6ccf53d20d6477e9b5631a54df043bf06924402b32'

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
