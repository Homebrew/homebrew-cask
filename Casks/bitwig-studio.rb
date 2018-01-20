cask 'bitwig-studio' do
  version '2.2.3'
  sha256 '1c19c400cff33a95f3fc3524429d7b175274aa35dcf8c8c1c52b2b209ff1e56d'

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
