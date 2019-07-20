cask 'bitwig-studio' do
  version '3.0.1'
  sha256 '9f5d16dc7454d1d9ace57363bf7fc0198497e2cd5ae680c3dbfa98b39d79c831'

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
