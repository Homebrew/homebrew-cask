cask 'double-commander' do
  version '0.8.0-7906'
  sha256 '98c896fb47251490db327c24d52cc76af6284218e82af44bc2379abcc3431339'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: '8532e41a76f5e6fb15d5e9a55c4824ff4244fbb243a361dabf9b1132575fd22c'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  app 'Double Commander.app'
end
