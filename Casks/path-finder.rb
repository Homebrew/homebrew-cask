class PathFinder < Cask
  version 'latest'
  sha256 :no_check

  url 'http://get.cocoatech.com/PF7.zip'
  homepage 'http://www.cocoatech.com/pathfinder/'

  app 'Path Finder.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.cocoatech.PathFinder', 'kNTMoveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
