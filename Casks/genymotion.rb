cask 'genymotion' do
  version '2.12.0'
  sha256 '2a9b018b95e81775b2ecddc5a96b849cdac8ce79b6f38bb67dc6613706daebc9'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
