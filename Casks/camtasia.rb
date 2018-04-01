cask 'camtasia' do
  version '3.1.2'
  sha256 'd5fe377095293bdc461909d316b598531dbdeb279afada57698c2ac383019bbe'

  url "https://download.techsmith.com/camtasiamac/enu/#{version.no_dots}/camtasia.dmg"
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end
