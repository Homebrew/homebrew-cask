class Codekit < Cask
  version '2.1.7 (17945)'
  sha256 '2d68f834e911527cce1c45315b8d8a986191b3aa0226371585a52ef0c9856c91'

  url 'https://incident57.com/codekit/files/codekit-17945.zip'
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml'
  homepage 'http://incident57.com/codekit/'
  license :unknown

  app 'CodeKit.app'
end
