cask 'blocs' do
  version '3.4.2'
  sha256 '8640f4d05618433dbb84fc0fa720ad947fbf9dfcddc2efcbc2fffd6ea1e44d74'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
