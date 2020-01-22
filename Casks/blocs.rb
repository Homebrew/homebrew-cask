cask 'blocs' do
  version '3.4.3'
  sha256 'b65fbed3a357fc02b0a7300183f7a6da0df837cc6cede302d70eee5a35179525'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
