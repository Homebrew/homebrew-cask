class PathFinder < Cask
  url 'http://get.cocoatech.com/PF6_LION.zip'
  homepage 'http://www.cocoatech.com/pathfinder/'
  version 'latest'
  no_checksum
  link 'Path Finder.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.cocoatech.PathFinder kNTMoveToApplicationsFolderAlertSuppress -bool true'
  end
end
