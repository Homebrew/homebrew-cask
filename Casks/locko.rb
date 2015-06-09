cask :v1 => 'locko' do
  version :latest
  sha256 :no_check

  url 'http://download.binarynights.com/Locko.zip'
  name 'Locko'
  appcast 'http://update.binarynights.com/locko/sparkle-update.xml',
          :sha256 => '109cd2e84b31bafcc00c84f5fbb8a3dc27653c1aaeba983b9f4cd5ef41258afd'
  homepage 'http://www.binarynights.com/'
  license :commercial

  app 'Locko.app'
end
