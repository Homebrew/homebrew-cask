cask "notebooks" do
  version "2.3"
  sha256 "615abf89d975f00421e7632ca6ec03171674984f77fd68c243b31b57199f0ab9"

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  appcast "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
  name "Notebooks"
  homepage "https://www.notebooksapp.com/mac/"

  app "Notebooks.app"
end
