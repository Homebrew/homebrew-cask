cask 'panconvert' do
  version '0.1.5'
  sha256 '98ab46e9ac375b155d9361480e2d180fc2caf9905d55a64ea2faca3873b80ff9'

  url "https://downloads.sourceforge.net/panconvert/PanConvert-#{version}.dmg"
  appcast 'https://raw.githubusercontent.com/apaeffgen/PanConvert/master/docs/changelog.md',
          checkpoint: '619da3f895d1553f9a34f92385be79c158a6418ef8b3650af915586f9d7f81f5'
  name 'PanConvert'
  homepage 'http://panconvert.sourceforge.net'

  app 'PanConvert.app'
end
