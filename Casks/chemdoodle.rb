cask 'chemdoodle' do
  version '10.4.0'
  sha256 '7010e437c8def581e575bf5367648962d4da58392a52b2ead7a342f1d11269e2'

  url "https://www.ichemlabs.com/downloads/ChemDoodle-osx-#{version}.dmg"
  appcast 'https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/'
  name 'ChemDoodle'
  homepage 'https://www.ichemlabs.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
