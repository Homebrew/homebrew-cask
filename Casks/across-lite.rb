cask 'across-lite' do
  version '2.4.4'
  sha256 '476fdbfb041b848562e52f34095fb7f3e519f73abab9bc1bda33afa00a3f1069'

  url "http://www.litsoft.com/across/alite/download/download.php/al#{version.no_dots}osx.dmg?os=macosx"
  name 'Across Lite'
  homepage 'http://www.litsoft.com/across/alite/download/'

  app 'Across Lite.app'
end
