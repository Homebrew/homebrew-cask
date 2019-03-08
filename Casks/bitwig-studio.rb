cask 'bitwig-studio' do
  version '2.5'
  sha256 'b23834a869db96f2b82cc950c42e0cdfbed490f00cd19cf1d2d3d5e4864ae48b'

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
