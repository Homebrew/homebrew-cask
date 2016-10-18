cask 'genymotion' do
  version '2.8.0'
  sha256 'be0cfe1b3df663f0b4a169d633d2e7cb9c63a8a3660a66b4bc5a661282b248a9'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"

  caveats do
    files_in_usr_local
  end
end
