cask 'genymotion' do
  version '3.0.1'
  sha256 '32acd7c8a58be3a421386b66dc864d0309a4cf867734d63e68809ba7d870a8b3'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
