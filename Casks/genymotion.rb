cask 'genymotion' do
  version '2.7.2'
  sha256 '727ae85f27d79b36346c07b427f3b9cb5a167649026cfdccc7ef560f4f859b7e'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
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
