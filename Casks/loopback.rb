cask 'loopback' do
  version '2.1.1'
  sha256 'e4f67dfbe2e80d4375a1512b3c58c36d8602838e7e4abc34fbb335f0e61b8ba1'

  # d2oxtzozd38ts8.cloudfront.net/loopback was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/loopback/download/Loopback.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.loopback&system=10141&platform=osx&arch=x86_64&version=2008000'
  name 'Loopback'
  homepage 'https://rogueamoeba.com/loopback/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Loopback.app'
end
