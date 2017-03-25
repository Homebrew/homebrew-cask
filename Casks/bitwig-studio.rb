cask 'bitwig-studio' do
  version '2.0'
  sha256 'e7ca7ddaadf1fda21ea6dcef01afa33c012e5278150b773ee87091ac268f3d6e'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com/'

  app 'Bitwig Studio.app'

  zap delete: [
                '~/Library/Application Support/Bitwig',
                '~/Library/Caches/Bitwig',
                '~/Library/Logs/Bitwig',
              ]
end
