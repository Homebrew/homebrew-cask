cask 'camtasia' do
  version '3.1.0'
  sha256 'c7d05d15284b962dd4c5067d46415bcc7c96fa2ef707f10927a8bdd8a5e71344'

  url "https://download.techsmith.com/camtasiamac/enu/#{version.no_dots}/camtasia.dmg"
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end
