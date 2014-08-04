class Hive < Cask
  version '1.3.3'
  sha256 '62d10ca58f11b984221fdf04d4d1fd307f191275f04815a8f6ed1ec65c51a7cc'

  url "https://github.com/hivewallet/hive-osx/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://hivewallet.com/hive-osx-appcast.xml'
  homepage 'http://www.hivewallet.com'

  link 'Hive.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hivewallet.Hive', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
