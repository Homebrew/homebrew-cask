cask 'genymotion' do
  version '3.0.2'
  sha256 '97e7cc585eea32ddc8a55494d31046760e70ea42f8de11bddf9f7a2970d46b16'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  appcast 'https://www.genymotion.com/product-release-note/desktop/'
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
