cask 'svnx' do
  version '1.3.4'
  sha256 'b687a0bc62de9f21b4c34dd94dbcfd282fd38184764e05e03e59dd5a19d1a3e8'

  url "https://svnx.googlecode.com/files/svnX%20#{version}.dmg"
  appcast 'https://svnx.googlecode.com/svn/wiki/svnX.rss.xml',
          :checkpoint => 'e760ce8bce9e9a33e29fd84853e1bf1b24d67635f609b1870b688db496b1b9a5'
  name 'SvnX'
  homepage 'https://code.google.com/p/svnx/'
  license :gratis

  app 'svnX.app'
end
