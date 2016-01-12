cask 'locko' do
  version :latest
  sha256 :no_check

  url 'http://download.binarynights.com/Locko.zip'
  appcast 'http://update.binarynights.com/locko/sparkle-update.xml',
          :sha256 => 'ab311f70d77b21dd8f2f06e2736346a81a6c9d3f8e4dcf730431b44579f14ef2'
  name 'Locko'
  homepage 'http://www.binarynights.com/'
  license :commercial

  app 'Locko.app'
end
