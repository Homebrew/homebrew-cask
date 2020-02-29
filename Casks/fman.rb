cask 'fman' do
  version '1.7.1'
  sha256 '6a49f112e37d1aa933f3bec618ecd24b3385c4e47559b483d93ff9944e7ebca7'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
