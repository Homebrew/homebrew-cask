cask 'blocs' do
  version '3.3.0'
  sha256 '8eb10695a8702968dbe6190a59ff338a6e1aba75dbe33e694ade42514d08a38d'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
