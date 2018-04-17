cask 'camtasia' do
  version '3.1.5'
  sha256 'e0e0b1e879f10cb164b09aaa8eb97b22d9947751cb09f775a5187cbdcc5d2a0e'

  url "https://download.techsmith.com/camtasiamac/enu/#{version.no_dots}/camtasia.dmg"
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end
