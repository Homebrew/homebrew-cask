cask "notebooks" do
  version "3.4.2"
  sha256 "49c9efcbc1d4041cbe6710fd973505605d3f609f617e57742cf5aede2415eba9"

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

  zap trash: [
    "~/Library/Application Scripts/com.aschmid.notebooks2.ShareExtension",
    "~/Library/Application Scripts/XZ68B7E678.com.aschmid.notebooks2",
    "~/Library/Application Support/com.aschmid.notebooks2",
    "~/Library/Application Support/Notebooks",
    "~/Library/Caches/com.aschmid.notebooks2",
    "~/Library/Containers/com.aschmid.notebooks2.ShareExtension",
    "~/Library/Group Containers/XZ68B7E678.com.aschmid.notebooks2",
    "~/Library/HTTPStorages/com.aschmid.notebooks2",
    "~/Library/HTTPStorages/com.aschmid.notebooks2.binarycookies",
    "~/Library/Preferences/com.aschmid.notebooks2.plist",
    "~/Library/Saved Application State/com.aschmid.notebooks2.savedState",
  ]
end
