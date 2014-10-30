class Netnewswire < Cask
  version '4.0.0-152'
  sha256 'f82539a4a53f6b3b05a6d63f459fee705bd28b83034bd0fc7e20be76e4592945'

  url "http://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          :sha256 => '33564e80110c0e5bc562bf65f09046d95afcbab79d0e9c49617c2b8548a64cc2'
  homepage 'http://netnewswireapp.com/'
  license :commercial

  app 'NetNewsWire.app'
end
