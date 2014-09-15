class Hive < Cask
  version '1.3.4'
  sha256 'bbf99210f9d359d1f75482abebd24eb7cb3103d437c47a0dbf107f4bf9dcd97b'

  url "https://github.com/hivewallet/hive-osx/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://hivewallet.com/hive-osx-appcast.xml'
  homepage 'http://www.hivewallet.com'

  app 'Hive.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hivewallet.Hive', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
