cask 'blocs' do
  version '3.4.7'
  sha256 'd3c1336923baf9c81d6ca493259a1afcdf4f5010213e04e6a700ac4a0c0a6999'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
