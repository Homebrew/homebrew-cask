cask 'blocs' do
  version '3.4.9'
  sha256 'dcc8cbdebb063246190ede47d6ee770757b32fc8556042590accce3c432f6779'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
