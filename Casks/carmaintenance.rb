cask 'carmaintenance' do
  version '1.8.21'
  sha256 '4d9ec27b42913d157546b8abb58787d47d181aa46c554ce309f3d0b1d1b4d780'

  url "http://www.traxxsoftware.com/downloads/CarMaintenance_#{version.dots_to_underscores}.zip"
  name 'CarMaintenance'
  homepage 'http://www.traxxsoftware.com/download.html'

  depends_on macos: '>= :mavericks'

  app "CarMaintenance_#{version.dots_to_underscores}/CarMaintenance.app"
end
