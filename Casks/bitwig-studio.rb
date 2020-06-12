cask 'bitwig-studio' do
  version '3.2.1'
  sha256 '254fab9eff320a0ed879527d425690404377ba0deaaccf3f98c1bdee7c7326e6'

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
