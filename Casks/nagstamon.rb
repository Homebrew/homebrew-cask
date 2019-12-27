cask 'nagstamon' do
  version '3.4'
  sha256 '4d128be81430388d5c52975dd44833cd7a5d05d8fd1ac6d258c94acdcc407241'

  url "https://nagstamon.ifw-dresden.de/files/stable/Nagstamon%20#{version}.dmg"
  appcast 'https://nagstamon.ifw-dresden.de/files/stable/sha256sums.txt'
  name 'Nagstamon'
  homepage 'https://nagstamon.ifw-dresden.de/'

  app 'Nagstamon.app'

  zap trash: '~/.nagstamon'
end
