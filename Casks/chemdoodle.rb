cask 'chemdoodle' do
  version '10.1.0'
  sha256 'f6109a48a5af60cd0a6ae9dd3c9e4fdc907bce1d3b1a9c9eb8504ba5bca4400a'

  url "https://www.ichemlabs.com/downloads/ChemDoodle-osx-#{version}.dmg"
  appcast 'https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/'
  name 'ChemDoodle'
  homepage 'https://www.ichemlabs.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
