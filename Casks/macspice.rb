cask 'macspice' do
  version '3.1.14'
  sha256 'a645d1264621f1cf3dbc796545e624ca5210d4aefe8907da3dfd4a91c7f77aab'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: '02531b3fc5be586cfe543c5a4b78b206369945aad9a698ccc6fa44dd64d053ad'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'

  app 'MacSpice.app'
end
