cask 'farrago' do
  version '1.2.7'
  sha256 'aadf04c3a13c43bbaf3007ef93606eb955d5487a06e3fe9cda30f9b4c8890a98'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  depends_on macos: '>= :sierra'

  app 'Farrago.app'
end
