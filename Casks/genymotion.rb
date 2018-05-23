cask 'genymotion' do
  version '2.12.1'
  sha256 'cdb11a56709bbfe0d6dd4114a24ad36edcfcfd97a3d16b034dfe18b94f2b8843'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
