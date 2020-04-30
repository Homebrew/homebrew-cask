cask 'blocs' do
  version '3.4.8'
  sha256 '277fe6f5c00a7312575bf184ef03f252a2de491bfc0d7edef9a89883a49c62c3'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
