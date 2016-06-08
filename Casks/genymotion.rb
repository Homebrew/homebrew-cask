cask 'genymotion' do
  version '2.7.0'
  sha256 '392fc999610187bf1d7de267f70c5062361d18c2f9d4e06a80a1974b79ca3d3b'

  url "http://files2.genymotion.com/genymotion/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'
  license :commercial

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"

  caveats do
    files_in_usr_local
  end
end
