cask 'blocs' do
  version '3.5.0'
  sha256 '176371c0987a7d1efd23570ee293c7f87057cc8173ba25a05f2f8aa72f5b4fca'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
