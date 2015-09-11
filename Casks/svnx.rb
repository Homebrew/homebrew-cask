cask :v1 => 'svnx' do
  version '1.3.4'
  sha256 'b687a0bc62de9f21b4c34dd94dbcfd282fd38184764e05e03e59dd5a19d1a3e8'

  url "https://svnx.googlecode.com/files/svnX%20#{version}.dmg"
  name 'SvnX'
  appcast 'https://svnx.googlecode.com/svn/wiki/svnX.rss.xml',
          :sha256 => '35166bbbcb22ee3704eddabcf6946eb60f415859c198c8b5480b346334c91056'
  homepage 'https://code.google.com/p/svnx/'
  license :gratis

  app 'svnX.app'
end
