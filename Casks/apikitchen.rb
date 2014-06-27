class Apikitchen < Cask
  version '0.1'
  sha256 '98a8bbd80442bc8af50f2fca456e4357db27093133a421b29fe51c22b2e53e53'
  
  url 'https://s3.amazonaws.com/envolto-static/ApiKitchen_0.1.dmg'
  appcast 'http://apikitchen.com/updates/appcast.xml'
  homepage 'http://apikitchen.com/'

  link 'ApiKitchen.app'
end
