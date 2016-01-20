cask 'carmaintenance' do
  version '1.8.21'
  sha256 '4d9ec27b42913d157546b8abb58787d47d181aa46c554ce309f3d0b1d1b4d780'

  url "http://www.traxxsoftware.com/downloads/CarMaintenance_#{version.gsub('.', '_')}.zip"
  name 'CarMaintenance'
  homepage 'http://www.traxxsoftware.com/download.html'
  license :commercial

  depends_on macos: '>= 10.9'

  app "CarMaintenance_#{version.gsub('.', '_')}/CarMaintenance.app"
end
