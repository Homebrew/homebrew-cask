cask 'chemdoodle' do
  version '9.0.3'
  sha256 '854b9346397ce6b0f133c0a8fb2204f3914f31d396fd2bae614931fec5aa2f10'

  url "https://www.chemdoodle.com/downloads/ChemDoodle-osx-#{version}.dmg"
  name 'ChemDoodle'
  homepage 'https://www.chemdoodle.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
