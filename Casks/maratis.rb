cask 'maratis' do
  version '3.21-beta'
  sha256 '7ec6dd97f1ce1ce09e08df0947fcb6ceb7a9f63024998f44afed3d3965829707'

  url "http://maratis3d.org/download/archive/Maratis-#{version}-osx10.6.zip"
  appcast 'http://www.maratis3d.org/?page_id=57'
  name 'Maratis'
  homepage 'http://www.maratis3d.org/'

  app "Maratis-#{version}-osx/Bin/Maratis.app"
  app "Maratis-#{version}-osx/Bin/MaratisPlayer.app"
end
