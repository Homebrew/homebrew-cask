cask 'bitwig-studio' do
  version '2.4.3'
  sha256 '7a3fd1ff984fc94964fe883b1b02442403d2385d18b2072ebf7d69be0ef4d48a'

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
