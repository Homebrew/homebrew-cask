cask 'blocs' do
  version '3.4.5'
  sha256 'cec6f9b0f1933db92ef884ff878a7a8955dcd658b706fd1ffb04fbd2e0005309'

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast 'https://blocsapp.com/release-notes.html'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app 'Blocs.app'
end
