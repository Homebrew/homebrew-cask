cask "notebooks" do
  version "3.1.1"
  sha256 "7679d76760432fd5d3efddd36d20716a1cf0d4a5659d0b8ec94a5606ee70d4b3"

  url "https://www.notebooksapp.com/Download/macOS/v#{version.major}/Notebooks.dmg"
  name "Notebooks"
  desc "Word processor"
  homepage "https://www.notebooksapp.com/mac/"

  livecheck do
    url "https://notebooksapp.com/Download/macOS/v#{version.major}/Notebooks#{version.major}Appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Notebooks.app"
end
