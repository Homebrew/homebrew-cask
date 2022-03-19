cask "notebooks" do
  version "2.4.3,218"
  sha256 "0e3ba7488492fe5ccb4485d83d4e3e94bd6859ba3d56a98c6ed6c5134fc54ae5"

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  name "Notebooks"
  desc "Word processor"
  homepage "https://www.notebooksapp.com/mac/"

  livecheck do
    url "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
    strategy :sparkle
  end

  app "Notebooks.app"
end
