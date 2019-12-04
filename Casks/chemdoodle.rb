cask 'chemdoodle' do
  version '10.0.2'
  sha256 '00909b15505f4467893fc12581f05a870ac08db714eaf4362bd6b233aa210af8'

  url "https://www.ichemlabs.com/downloads/ChemDoodle-osx-#{version}.dmg"
  appcast 'https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/'
  name 'ChemDoodle'
  homepage 'https://www.ichemlabs.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
