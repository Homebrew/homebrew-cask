cask 'chemdoodle' do
  version '9.0.2'
  sha256 '41e0fce781a252538ba08dc232fafaa11d4c81d6541b6aac88142b1e421bbf10'

  url "https://www.chemdoodle.com/downloads/ChemDoodle-osx-#{version}.dmg"
  name 'ChemDoodle'
  homepage 'https://www.chemdoodle.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
