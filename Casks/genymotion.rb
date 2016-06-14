cask 'genymotion' do
  version '2.7.1'
  sha256 'f5ee3cfd04e09eac73b57362e9097552fdb44d9271384c2d7b03ad93fbdf74d8'

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
