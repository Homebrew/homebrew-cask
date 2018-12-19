cask 'genymotion' do
  version '2.12.2'
  sha256 '2e6fb9d047620c508d06be35a642b4942b5f7a05836b7b0c5ce4810823b71b50'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"
end
