cask 'farrago' do
  version '1.5.1'
  sha256 'c685afb2bca284c2d206fbb930f7fac41d56962c42e26a3a08cd915ad8dfa84e'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Farrago.app'
end
