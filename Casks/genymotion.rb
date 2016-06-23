cask 'genymotion' do
  version '2.7.2'
  sha256 '5552e0fe789daf533211a3fc4ab5f53f44c6ab68410c6ea16662e55562368ec8'

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
