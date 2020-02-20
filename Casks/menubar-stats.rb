cask 'menubar-stats' do
  version '3.2'
  sha256 'ce983949474c2b6e145b48ef84db33daf84074960f3b52f0bebaf27376bcf7e3'

  url 'https://seense.com/menubarstats/updateapp/mbs.zip'
  appcast 'https://www.seense.com/menubarstats/updateapp/appcast.xml'
  name 'MenuBar Stats'
  homepage 'https://seense.com/menubarstats/'

  depends_on macos: '>= :sierra'

  app 'MenuBar Stats.app'
end
