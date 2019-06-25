cask 'fman' do
  version '1.6.3'
  sha256 'bffb9ee85b694c9451fe0e48f675fc795579f808ffede8f19881821327d981f6'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
