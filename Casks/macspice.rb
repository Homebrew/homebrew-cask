cask 'macspice' do
  version '3.1.16'
  sha256 '5ef9430b956b8a3795a7e605fb0d5ce235d55dbcd886f06fc4959ff61427cd39'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: '52a03cddd8a97bbec18832c2bbebccb8e8edfefc67b80c03f30b48662a007f6c'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
