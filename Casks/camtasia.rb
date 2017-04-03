cask 'camtasia' do
  version '3.0.4'
  sha256 '7e67be8a2e5321be8eb2ffa94ad6a50b58100234cc5536f0b6165c01ceb14f9c'

  url "https://download.techsmith.com/camtasiamac/enu/#{version.no_dots}/camtasia.dmg"
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end
