cask 'svnx' do
  version '1.3.4'
  sha256 'b687a0bc62de9f21b4c34dd94dbcfd282fd38184764e05e03e59dd5a19d1a3e8'

  url "https://svnx.googlecode.com/files/svnX%20#{version}.dmg"
  appcast 'https://svnx.googlecode.com/svn/wiki/svnX.rss.xml',
          :checkpoint => '720e2c382abca0a9f9881e15615dd6c83120898cca0a73ab926f0a8419f38de3'
  name 'SvnX'
  homepage 'https://code.google.com/p/svnx/'
  license :gratis

  app 'svnX.app'
end
