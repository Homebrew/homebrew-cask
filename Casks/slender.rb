class Slender < Cask
  version '2.1.1'
  sha256 '6235751e4510df2095ebae8e3588ed32d858d2f4612b5f020aea7efd4ff60cf0'

  url 'http://downloads.dragonforged.com/slender211.zip'
  appcast 'http://dragonforged.com/slender/sparkle/?bundleId=com.dfsw.Slender'
  homepage 'http://dragonforged.com/slender/'

  app 'Slender.app'
end
