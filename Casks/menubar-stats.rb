cask 'menubar-stats' do
  version '2.2.6'
  sha256 '83872c92a807d5f17c07f6002226abbce37e744488a5e199c1fcb9e8b063bee7'

  url 'https://seense.com/menubarstats/updateapp/mbs.zip'
  appcast 'https://www.seense.com/menubarstats/updateapp/appcast.xml'
  name 'MenuBar Stats'
  homepage 'https://seense.com/menubarstats/'

  depends_on macos: '>= :yosemite'

  app 'MenuBar Stats.app'
end
