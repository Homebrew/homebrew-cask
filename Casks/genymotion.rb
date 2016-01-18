cask 'genymotion' do
  version '2.6.0'
  sha256 '9d12ae904761d76b15a556262d7eb32d1f5031fe60690224d7b0a70303cf8d39'

  url "http://files2.genymotion.com/genymotion/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'
  license :commercial

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary 'Genymotion Shell.app/Contents/MacOS/genyshell'

  caveats do
    files_in_usr_local
  end
end
