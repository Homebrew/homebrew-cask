cask 'back-in-time' do
  version '5'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.tri-edre.com/pub/files/backintime#{version}.dmg"
  name 'Back-In-Time'
  homepage 'https://www.tri-edre.com/english/backintime.html'

  app "Back-In-Time #{version}.app"
end
