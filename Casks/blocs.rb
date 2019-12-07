cask 'blocs' do
  version '3.4.1'
  sha256 'dc90e7fa8cc84d5c5e19d3ec35b202b69ef8f5d09622bd0245f8b2b1416c22de'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
