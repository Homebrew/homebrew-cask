cask 'genymotion' do
  version '2.9.0'
  sha256 '6351aaf2cbca439957b7bca40685253d0c1743dee28f6ab056fd59e1055906fc'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
