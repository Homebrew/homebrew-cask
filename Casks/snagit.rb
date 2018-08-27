cask 'snagit' do
  version '2018'
  sha256 :no_check # required as upstream package is updated in-place

  url 'https://download.techsmith.com/snagitmac/enu/Snagit.dmg'
  name 'Snagit'
  homepage 'https://www.techsmith.com/screen-capture.html'

  app "Snagit #{version}.app"
end
