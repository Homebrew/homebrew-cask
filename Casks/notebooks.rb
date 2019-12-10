cask 'notebooks' do
  version '2.0.2'
  sha256 '8b7a15abcb3351b16fafb5919503c678c6b2556b6b769b231216e528362566eb'

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  appcast "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
  name 'Notebooks'
  homepage 'https://www.notebooksapp.com/mac/'

  app 'Notebooks.app'
end
