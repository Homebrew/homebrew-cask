cask 'fman' do
  version '1.6.2'
  sha256 'ed868cab1f416c2e2d71a9c0258b9063e234c57e86d487b00b45cefbc2f0c03b'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
