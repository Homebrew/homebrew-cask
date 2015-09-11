cask :v1 => 'doitim' do
  version '40141202'
  sha256 'f5966c2c72dd286429b175480da8c206b664dd986ab109e416a98ade4aecba00'

  url "http://version.doit.im/dl/Doit.im.#{version}.zip"
  name 'Doit.im'
  appcast 'http://version.doit.im/mac/update.xml',
          :sha256 => '3ab0939dc09ccabb0beb97bf9da3c88aef5f8813bda743ebdb881640c9e0bab9'
  homepage 'http://doit.im/'
  license :commercial

  app 'Doit.im.app'
end
