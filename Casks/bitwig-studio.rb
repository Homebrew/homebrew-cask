cask 'bitwig-studio' do
  version '3.2.2'
  sha256 '1bdb159434440bbee5a58c80365a427915587c077d9a18b1a12f24a3c700bbe3'

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
