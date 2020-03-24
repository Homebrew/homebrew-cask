cask 'chemdoodle' do
  version '10.3.0'
  sha256 '897755ac77be93a799b0df6e1c2e315846ae915be4e00126484f9702b272eceb'

  url "https://www.ichemlabs.com/downloads/ChemDoodle-osx-#{version}.dmg"
  appcast 'https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/'
  name 'ChemDoodle'
  homepage 'https://www.ichemlabs.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
