cask 'camtasia' do
  version '3.0.2'
  sha256 '539aa3348178ce1614efff36cb26c3241cebc96516ee95b2c0da3abe622947e7'

  url "https://download.techsmith.com/camtasiamac/enu/#{version.no_dots}/camtasia.dmg"
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end
