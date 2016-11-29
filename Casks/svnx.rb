cask 'svnx' do
  version '2.0b3'
  sha256 '7b4cb5e649def21a6a76660763ee4dcb9ee42e5ed12374abcc19962bbfe24b30'

  url "https://subversion.assembla.com/svn/svnx/tags/svnX%20#{version}.dmg"
  appcast 'https://subversion.assembla.com/svn/svnx/rss/svnX.rss.xml',
          checkpoint: '8200e453c0468f97f5d9c0bf7c3ec96ae1e4784f2a5f109a43e0ef2b13adce10'
  name 'svnX'
  homepage 'https://subversion.assembla.com/svn/svnx/html/index.html'

  app 'svnX.app'
end
