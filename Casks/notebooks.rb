cask "notebooks" do
  version "2.3.1"
  sha256 "3516ad3f39619822c486984f924ec2598ec344be81ba09420a81a5286076abad"

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  appcast "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
  name "Notebooks"
  homepage "https://www.notebooksapp.com/mac/"

  app "Notebooks.app"
end
