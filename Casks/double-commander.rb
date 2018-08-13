cask 'double-commander' do
  version '0.8.3-8160'
  sha256 '80f5b3fc3f736dbf99155f31d1003a83ee42e7207048a70f672cbf00afb811b1'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  depends_on macos: '>= :snow_leopard'

  app 'Double Commander.app'
end
