cask "notebooks" do
  version "2.2"
  sha256 "2704b5bd6e15f53da472842edda34a2b3bc20f4452c74eea197d84277bd0963e"

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  appcast "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
  name "Notebooks"
  homepage "https://www.notebooksapp.com/mac/"

  app "Notebooks.app"
end
