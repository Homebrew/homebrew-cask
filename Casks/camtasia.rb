cask 'camtasia' do
  version '3.1.1'
  sha256 'b4e45f99fef0d7573fb316b29d43cc0fa14b8fe3ada5cccbd7e6c730f7cddc64'

  url "https://download.techsmith.com/camtasiamac/enu/#{version.no_dots}/camtasia.dmg"
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end
