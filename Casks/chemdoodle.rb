cask 'chemdoodle' do
  version '10.0.1'
  sha256 'ed479b7b3c3b38d608e05d933af1abc138bff04acb11c3c67f47465ee6b1f9ad'

  url "https://www.ichemlabs.com/downloads/ChemDoodle-osx-#{version}.dmg"
  appcast 'https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/'
  name 'ChemDoodle'
  homepage 'https://www.ichemlabs.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
