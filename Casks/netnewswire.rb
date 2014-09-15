class Netnewswire < Cask
  version '4.0.0-152'
  sha256 'f82539a4a53f6b3b05a6d63f459fee705bd28b83034bd0fc7e20be76e4592945'

  url 'http://cdn.netnewswireapp.com/releases/NetNewsWire-4.0.0-152.zip'
  appcast 'https://updates.blackpixel.com/updates?app=nnw'
  homepage 'http://netnewswireapp.com/'

  app 'NetNewsWire.app'
end
