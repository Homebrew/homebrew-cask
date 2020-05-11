cask 'blocs' do
  version '3.4.10'
  sha256 '23775539f9c78318065db2bcbfa00590835a2b9d746514eb26897f47d3d3d063'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
