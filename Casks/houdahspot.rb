class Houdahspot < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.houdah.com/houdahSpot/download_assets/HoudahSpot_latest.zip'
  appcast 'http://www.houdah.com/houdahSpot/updates/profileInfo3.php'
  homepage 'http://www.houdah.com/houdahSpot/'

  link 'HoudahSpot.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.houdah.HoudahSpot', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
