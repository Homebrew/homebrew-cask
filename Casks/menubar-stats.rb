cask 'menubar-stats' do
  version :latest
  sha256 :no_check

  url 'https://seense.com/menubarstats/updateapp/mbs.zip'
  name 'MenuBar Stats'
  homepage 'https://seense.com/menubarstats/'

  depends_on macos: '>= :yosemite'

  app 'MenuBar Stats.app'
end
