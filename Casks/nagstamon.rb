cask 'nagstamon' do
  version '3.2.1'
  sha256 'b588b40fdb59a1b434f9b0509148b42b9bcef7c35d8ba077bdc31fb9a565777a'

  url "https://nagstamon.ifw-dresden.de/files/stable/Nagstamon%20#{version}.dmg"
  appcast 'https://nagstamon.ifw-dresden.de/files/stable/sha256sums.txt'
  name 'Nagstamon'
  homepage 'https://nagstamon.ifw-dresden.de/'

  app 'Nagstamon.app'

  zap trash: '~/.nagstamon'
end
