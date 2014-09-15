class Squire < Cask
  version '0.91'
  sha256 'd37f2cdf5f08ed85e5a1f10a66c70a964e51e3a64e7c7335d97c50b1a7a1691e'

  url 'https://s3.amazonaws.com/Squire_Mac_Builds/Squire_0.91.zip'
  appcast 'http://www.sylion.com/squireapp/sparkle/SquireMac/appcastMac.xml'
  homepage 'http://squireapp.com'

  app 'Squire.app'
end
