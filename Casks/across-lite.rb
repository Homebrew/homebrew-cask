cask 'across-lite' do
  version '2.4.2'
  sha256 'd4279d07914fc5654fc7eeb6816952e8e89504f6b9e34d631403db02b56173d2'

  url "http://www.litsoft.com/across/alite/download/download.php/al#{version.no_dots}osx.dmg?os=macosx"
  name 'Across Lite'
  homepage 'http://www.litsoft.com/across/alite/download/'

  app 'Across Lite.app'
end
