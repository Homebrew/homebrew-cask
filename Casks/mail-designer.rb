cask 'mail-designer' do
  version '2.6.4'
  sha256 '9e740f958c02bc4a8fc9f1757105ecc382488ec502be05b974d177afcf2d7d81'

  url "http://download.equinux.com/files/other/Mail_Designer_#{version}.zip"
  name 'Mail Designer'
  homepage 'http://equinux.com/us/products/maildesigner2/'

  app 'Mail Designer.app'
end
