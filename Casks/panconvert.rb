cask 'panconvert' do
  version :latest
  sha256 :no_check

  url "http://downloads.sourceforge.net/sourceforge/panconvert/PanConvert-0.1.5.dmg"
  appcast 'https://github.com/apaeffgen/PanConvert/blob/master/docs/changelog.md',
      checkpoint: 'e2333a9cd663739863c8306193960401977aaa88'

  name 'PanConvert'
  homepage 'http://panconvert.sourceforge.net'
  license :gpl

  app 'PanConvert.app'
end
