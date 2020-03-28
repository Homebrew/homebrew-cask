cask 'notebooks' do
  version '2.1.1'
  sha256 '804a4d06b15acc4579f9f6a0846971ffd851a7571b1af2b5fa5dd501e8a10d10'

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  appcast "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
  name 'Notebooks'
  homepage 'https://www.notebooksapp.com/mac/'

  app 'Notebooks.app'
end
