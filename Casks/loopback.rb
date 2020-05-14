cask 'loopback' do
  version '2.1.4'
  sha256 '03be4c9578f7567037437163affb45169bd45c7ea6442d76a8ff35a2f91575e8'

  # d2oxtzozd38ts8.cloudfront.net/loopback/ was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/loopback/download/Loopback.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.loopback&system=10141&platform=osx&arch=x86_64&version=2008000'
  name 'Loopback'
  homepage 'https://rogueamoeba.com/loopback/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Loopback.app'
end
