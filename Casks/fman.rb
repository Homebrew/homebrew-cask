cask 'fman' do
  version '1.5.7'
  sha256 'B62D277D19A519048674E0DD822177040CD943D30429ED0EFD9D7BF14080615F'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
