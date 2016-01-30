cask 'panconvert' do
  version 0.1.5
  sha256 98ab46e9ac375b155d9361480e2d180fc2caf9905d55a64ea2faca3873b80ff9

  url "http://downloads.sourceforge.net/sourceforge/panconvert/PanConvert-v#{version}.dmg"
  appcast 'https://github.com/apaeffgen/PanConvert/blob/master/docs/changelog.md',
      checkpoint: 'e2333a9cd663739863c8306193960401977aaa88'
  name 'PanConvert'
  homepage 'http://panconvert.sourceforge.net'
  license :gpl

  app 'PanConvert.app'
end
