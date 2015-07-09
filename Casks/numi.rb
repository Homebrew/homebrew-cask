cask :v1 => 'numi' do
  version :latest
  sha256 :no_check

  url 'http://numi.io/static/files/Numi.zip'
  appcast 'http://numi.io/update.xml',
          :sha256 => 'fc6e87987f66f478065ac353a270fa122fb329e85f5b7fd6cb256caefd22b7ed'
  name 'Numi'
  homepage 'http://numi.io/'
  license :gratis

  app 'Numi.app'
end
