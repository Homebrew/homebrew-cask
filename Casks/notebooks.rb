cask "notebooks" do
  version "2.3.3,205"
  sha256 "55a1d8caca12085092f5f1cdd96caa94c2528999733348e3f605b11a0a375028"

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  name "Notebooks"
  homepage "https://www.notebooksapp.com/mac/"

  livecheck do
    url "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
    strategy :sparkle
  end

  app "Notebooks.app"
end
