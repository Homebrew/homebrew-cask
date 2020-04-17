cask 'farrago' do
  version '1.5.0'
  sha256 'f7e6320583e697e1c561c5880658409cbc1e87a24d0e775c0fa180902301ce5d'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  depends_on macos: '>= :sierra'

  app 'Farrago.app'
end
