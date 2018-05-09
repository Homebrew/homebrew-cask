cask 'chemdoodle' do
  version '9.0.1'
  sha256 'ea2aba830bf2251094e6b3f3836a63d0619185db576d6da85c74f8d66ff62672'

  url "https://www.chemdoodle.com/downloads/ChemDoodle-osx-#{version}.dmg"
  name 'ChemDoodle'
  homepage 'https://www.chemdoodle.com/'

  depends_on macos: '>= :yosemite'

  suite 'ChemDoodle'
end
