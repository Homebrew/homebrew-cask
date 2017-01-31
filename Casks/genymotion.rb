cask 'genymotion' do
  version '2.8.1'
  sha256 'e6bc3a4a4b1570644bbfe0c98ce192cad1517b1ae47b1ca3240a2ec2b3874b4f'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
