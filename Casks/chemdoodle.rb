cask 'chemdoodle' do
  version '10.2.0'
  sha256 'b188eede7ce3e98c4c1e49aa9a72bd008c62e298ac00f91220b6d9821758df79'

  url "https://www.ichemlabs.com/downloads/ChemDoodle-osx-#{version}.dmg"
  appcast 'https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/'
  name 'ChemDoodle'
  homepage 'https://www.ichemlabs.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
