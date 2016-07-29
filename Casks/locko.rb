cask 'locko' do
  version '1.2'
  sha256 'b9831813aaed104d7fd746b50b5b9ee47a334826cda045aae86cc04e2f17abc8'

  url 'http://download.binarynights.com/Locko.zip'
  appcast 'http://update.binarynights.com/locko/sparkle-update.xml',
          checkpoint: 'ab311f70d77b21dd8f2f06e2736346a81a6c9d3f8e4dcf730431b44579f14ef2'
  name 'Locko'
  homepage 'http://www.binarynights.com/'
  license :commercial

  app 'Locko.app'
end
