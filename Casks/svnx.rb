cask :v1 => 'svnx' do
  version '1.3.4'
  sha256 'b687a0bc62de9f21b4c34dd94dbcfd282fd38184764e05e03e59dd5a19d1a3e8'

  url "https://svnx.googlecode.com/files/svnX%20#{version}.dmg"
  name 'SvnX'
  appcast 'https://svnx.googlecode.com/svn/wiki/svnX.rss.xml',
          :sha256 => '13000f56917910f7fceb8c4763d6d69dc7d8cac5cc70b52dff83f1b8d9e2b975'
  homepage 'https://code.google.com/p/svnx/'
  license :gratis

  app 'svnX.app'
end
