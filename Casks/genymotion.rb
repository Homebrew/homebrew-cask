cask 'genymotion' do
  version '3.0.0'
  sha256 'a45c5d3c006c346e654e36dc75a0c59b9fc7f5c01c1ea358cb06bf805ee4cbfc'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
