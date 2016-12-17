cask 'kepler' do
  version '2.5'
  sha256 '8b6b793b7ba95d1a26184d25b89fe531d8a291b75f1bfc62e7dbcf41a8bc05fb'

  url "https://code.kepler-project.org/code/kepler/releases/installers/#{version}/Kepler-#{version}.dmg"
  name 'Kepler'
  homepage 'https://kepler-project.org/'

  suite "Kepler-#{version}"
end
