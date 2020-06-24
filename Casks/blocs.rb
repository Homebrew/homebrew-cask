cask 'blocs' do
  version '3.5.1'
  sha256 '43761a21f323b70f6396d2809d49e41db11b9066fc60e0cabb46db437acb8132'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
