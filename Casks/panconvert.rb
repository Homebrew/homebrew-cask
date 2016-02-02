cask 'panconvert' do
  version '0.1.5'
  sha256 '98ab46e9ac375b155d9361480e2d180fc2caf9905d55a64ea2faca3873b80ff9'

  url "http://downloads.sourceforge.net/sourceforge/panconvert/PanConvert-v#{version}.dmg"
  appcast 'https://raw.githubusercontent.com/apaeffgen/PanConvert/master/docs/changelog.md',
          checkpoint: 'cbe74ea166203c4e72776556b49c667b33f38e5d23260cb606549d593c432a7f'
  name 'PanConvert'
  homepage 'http://panconvert.sourceforge.net'
  license :gpl

  app 'PanConvert.app'
end
