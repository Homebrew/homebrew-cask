class Soulver < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.acqualia.com/files/download.php?product=soulver'
  appcast 'http://www.acqualia.com/soulver/appcast/soulver2.xml'
  homepage 'http://www.acqualia.com/soulver/'

  app 'Soulver.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.acqualia.soulver', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
  zap :files => [
                 # todo verify that this does not contain user-generated content
                 # '~/Library/Application Support/Soulver',
                 '~/Library/Preferences/com.acqualia.soulver.plist',
                ]
end
