cask 'double-commander' do
  version '0.8.2-8010'
  sha256 '7b18802679e4fe94d91df90f97c1e077c694ad9833141b534a2ef6cc21e64598'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: 'ade8fd861cb5565bae8fcccec5a4b96c10782ee198976a5d72f6e81ee4d04282'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  depends_on macos: '>= :snow_leopard'

  app 'Double Commander.app'
end
