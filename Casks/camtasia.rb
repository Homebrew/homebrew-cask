cask 'camtasia' do
  version '3.0.6'
  sha256 '889445ea09adeb091c4d05d9651734bb545e521fe48bcef69dfd59ba12f98ff6'

  url "https://download.techsmith.com/camtasiamac/enu/#{version.no_dots}/camtasia.dmg"
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end
