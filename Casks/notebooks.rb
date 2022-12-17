cask "notebooks" do
  version "3.0.2,225"
  sha256 "d3630fd9b8a2d9578373b58ec2cd762613a2fb8cdcf430d3eadec8e3a36a6d2f"

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
