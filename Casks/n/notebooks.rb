cask "notebooks" do
  version "3.3.3"
  sha256 "bf553ab095834fe787cce88e14c6cb37dc521082eaade376ecd1e0deba3b5be6"

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
    "~/Library/Application Scripts/XZ68B7E678.com.aschmid.notebooks2",
    "~/Library/Application Scripts/com.aschmid.notebooks2.ShareExtension",
    "~/Library/Application Support/Notebooks",
    "~/Library/Application Support/com.aschmid.notebooks2",
    "~/Library/Caches/com.aschmid.notebooks2",
    "~/Library/Containers/com.aschmid.notebooks2.ShareExtension",
    "~/Library/Group Containers/XZ68B7E678.com.aschmid.notebooks2",
    "~/Library/HTTPStorages/com.aschmid.notebooks2",
    "~/Library/HTTPStorages/com.aschmid.notebooks2.binarycookies",
    "~/Library/Preferences/com.aschmid.notebooks2.plist",
    "~/Library/Saved Application State/com.aschmid.notebooks2.savedState",
  ]
end
