cask 'notebooks' do
  version '2.1'
  sha256 '3b7473e7e53a921a864dfb74ec17b9b87ab3af5261a911729d8b12340e950cfa'

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  appcast "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
  name 'Notebooks'
  homepage 'https://www.notebooksapp.com/mac/'

  app 'Notebooks.app'
end
