cask 'genymotion' do
  version '3.0.4'
  sha256 '03c1643b72a6f11d0848ef8bbdd0ec7c642917619f7440033c9b4303147a9abe'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  appcast 'https://www.genymotion.com/product-release-note/desktop/'
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
