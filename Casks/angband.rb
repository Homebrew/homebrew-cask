cask :v1 => 'angband' do
  version '4.0.3'
  sha256 'af2747c3f8a3cc5e6e430fdd09e60a35f4b02a3a270fbe364a95a25bb61a0012'

  url "http://rephial.org/downloads/#{version.to_f}/Angband-#{version}-osx.dmg"
  name 'Angband'
  homepage 'http://rephial.org'
  license :gpl

  app 'Angband.app'
end
