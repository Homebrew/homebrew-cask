cask 'blocs' do
  version '3.4.4'
  sha256 'dcaaabddc84521c7d4215a10cdd6fe95f5f153e99e060ab52a404f47e75194d2'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
