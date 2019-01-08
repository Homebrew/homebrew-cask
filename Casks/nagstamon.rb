cask 'nagstamon' do
  version '3.2'
  sha256 '29524356b454ee885f7315df5d056194776a4cf2247ccabbef2590232674c11e'

  url "https://nagstamon.ifw-dresden.de/files/stable/Nagstamon%20#{version}.dmg"
  appcast 'https://nagstamon.ifw-dresden.de/files/stable/sha256sums.txt'
  name 'Nagstamon'
  homepage 'https://nagstamon.ifw-dresden.de/'

  app 'Nagstamon.app'

  zap trash: '~/.nagstamon'
end
