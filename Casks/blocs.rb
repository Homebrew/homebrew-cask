cask 'blocs' do
  version '3.4.0'
  sha256 '483c0055676c7483883314edecb397a9a5ef29f40f893b7cbf19facc64a453b0'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
