cask :v1 => 'path-finder' do
  version :latest
  sha256 :no_check

  url 'http://get.cocoatech.com/PF7.zip'
  homepage 'http://www.cocoatech.com/pathfinder/'
  license :unknown

  app 'Path Finder.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.cocoatech.PathFinder', 'kNTMoveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
  zap :delete => [
                  '~/Library/Preferences/com.cocoatech.PathFinder.plist',
                  '~/Library/Application Support/Path Finder',
                 ]
end
