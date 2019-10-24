cask 'genymotion' do
  version '3.0.3'
  sha256 '520bd500e8952fd61559bc4d795463e99d774b895f700ca7980916d35375f29f'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  appcast 'https://www.genymotion.com/product-release-note/desktop/'
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary 'Genymotion Shell.app/Contents/MacOS/genyshell'
end
