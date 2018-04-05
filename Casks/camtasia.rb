cask 'camtasia' do
  version '3.1.4'
  sha256 'e32a359033bfb01c1d3547eaaa178fbc3c3aee84271874066ae54fe7e2c4514a'

  url "https://download.techsmith.com/camtasiamac/enu/#{version.no_dots}/camtasia.dmg"
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end
