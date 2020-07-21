cask 'chemdoodle' do
  version '11.0.0'
  sha256 '80c4687fb8d75b9141c90f59bc7a451400ea1c8e7e11d4cded825af5a98f607e'

  url "https://www.ichemlabs.com/downloads/ChemDoodle-osx-#{version}.dmg"
  appcast 'https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/'
  name 'ChemDoodle'
  homepage 'https://www.ichemlabs.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
