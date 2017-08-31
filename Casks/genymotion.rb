cask 'genymotion' do
  version '2.10.0'
  sha256 'b05c2f9b09a2426e012efc37c11ac97cfa3cdf139d18336ddb2b2f53b5f77217'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
