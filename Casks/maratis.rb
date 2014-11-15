cask :v1 => 'maratis' do
  version '3.21'
  sha256 '7ec6dd97f1ce1ce09e08df0947fcb6ceb7a9f63024998f44afed3d3965829707'

  url "https://maratis.googlecode.com/files/Maratis-#{version}-beta-osx10.6.zip"
  homepage 'http://www.maratis3d.org/'
  license :oss

  app 'Maratis.app'
  app 'MaratisPlayer.app'
end
