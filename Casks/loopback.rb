cask 'loopback' do
  version '2.1.2'
  sha256 '7b7c299993251d901be71013487955d315085d65f1e0b48ce8a4957dba977a3b'

  # d2oxtzozd38ts8.cloudfront.net/loopback was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/loopback/download/Loopback.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.loopback&system=10141&platform=osx&arch=x86_64&version=2008000'
  name 'Loopback'
  homepage 'https://rogueamoeba.com/loopback/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Loopback.app'
end
