cask 'farrago' do
  version '1.2.4'
  sha256 '2a10dd26d4d727e371d5edf682568b2b35c309639380fc84797e34f760ba2ed7'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
