cask 'loopback' do
  version '2.1.3'
  sha256 'edfc09b40acc9d22cf77e26cbcfea06ad5deda14d4015d09732a256d6737f426'

  # d2oxtzozd38ts8.cloudfront.net/loopback was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/loopback/download/Loopback.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.loopback&system=10141&platform=osx&arch=x86_64&version=2008000'
  name 'Loopback'
  homepage 'https://rogueamoeba.com/loopback/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Loopback.app'
end
