cask 'chemdoodle' do
  version '9.1.0'
  sha256 'c254f172ac197e0183fcacb6c60995f9f8545167b9684fb08559787d6abe5893'

  url "https://www.chemdoodle.com/downloads/ChemDoodle-osx-#{version}.dmg"
  appcast 'https://www.chemdoodle.com/download/osx-installation-instructions/'
  name 'ChemDoodle'
  homepage 'https://www.chemdoodle.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
