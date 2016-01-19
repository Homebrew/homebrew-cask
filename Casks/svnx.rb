cask 'svnx' do
  version '2.0b2'
  sha256 'f8d5f5a57eaaeed5904669fc5cde3773a6d05578bf331264cf1eac4c7b26ae2d'

  url "https://subversion.assembla.com/svn/svnx/tags/svnX%20#{version}.dmg"
  appcast 'https://subversion.assembla.com/svn/svnx/rss/svnX.rss.xml',
          checkpoint: 'db70ff768403b7248e7dd75e64c400c13ff55623b149d4f294f92713ebc9517e'
  name 'svnX'
  homepage 'https://subversion.assembla.com/svn/svnx/html/index.html'
  license :gratis

  app 'svnX.app'
end
