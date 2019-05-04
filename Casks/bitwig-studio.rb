cask 'bitwig-studio' do
  version '2.5.1'
  sha256 '675e04be1a7ca4a3bd99ff500ae4fc6227bdd29295ffa21eeabe5e0bc70693bf'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  appcast 'https://www.bitwig.com/en/previous_releases'
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com/'

  app 'Bitwig Studio.app'

  zap trash: [
               '~/Library/Application Support/Bitwig',
               '~/Library/Caches/Bitwig',
               '~/Library/Logs/Bitwig',
             ]
end
