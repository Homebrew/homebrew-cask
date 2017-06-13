cask 'kepler' do
  version '2.5'
  sha256 '8b6b793b7ba95d1a26184d25b89fe531d8a291b75f1bfc62e7dbcf41a8bc05fb'

  url "https://code.kepler-project.org/code/kepler/releases/installers/#{version}/Kepler-#{version}.dmg"
  appcast 'https://kepler-project.org/users/downloads',
          checkpoint: 'f2961afc71cd84d2f41d992c1fd73e3d60bd41a6c5ba6adf9916522d41080248'
  name 'Kepler'
  homepage 'https://kepler-project.org/'

  suite "Kepler-#{version}"
end
