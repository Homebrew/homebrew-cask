class PathFinder < Cask
  version 'latest'
  sha256 :no_check

  url 'http://get.cocoatech.com/PF6_LION.zip'
  homepage 'http://www.cocoatech.com/pathfinder/'

  link 'Path Finder.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.cocoatech.PathFinder', 'kNTMoveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
