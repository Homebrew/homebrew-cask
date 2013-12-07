class Houdahspot < Cask
  url 'http://www.houdah.com/houdahSpot/download_assets/HoudahSpot_latest.zip'
  homepage 'http://www.houdah.com/houdahSpot/'
  version 'latest'
  no_checksum
  link 'HoudahSpot.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.houdah.HoudahSpot moveToApplicationsFolderAlertSuppress -bool true'
  end
end
