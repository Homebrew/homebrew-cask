cask 'pingendo' do
  version '3'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.pingendo.com/v#{version}/Pingendo.dmg"
  name 'Pingendo'
  homepage 'https://pingendo.com/'

  app "Pingendo#{version}.app"
end
