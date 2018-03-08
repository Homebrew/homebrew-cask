cask 'studio-3t' do
  version '2018.2.3'
  sha256 '02b343b43a8c4cde133b3eabfa3f4e6edd8ceca6ea63bdaa02f66cfbfc1243ab'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '1d2ff35bc2217778c011e561ec6a1df9cb3ebc5f384e1625a4978c3f4588f5a5'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
