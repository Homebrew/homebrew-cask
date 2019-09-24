cask 'loopback' do
  version '2.1.0'
  sha256 'fab2afad94d99e4a0471a38dad0106e339e1f7d7a84f99aa4424a5942870c41f'

  # d2oxtzozd38ts8.cloudfront.net/loopback was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/loopback/download/Loopback.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.loopback&system=10141&platform=osx&arch=x86_64&version=2008000'
  name 'Loopback'
  homepage 'https://rogueamoeba.com/loopback/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Loopback.app'
end
