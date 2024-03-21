cask "notebooks" do
  version "3.4.1"
  sha256 "0e229fb5b2d077391cb99a3298eb0240f8eb0ac084aaa2a3d3e5db3a1290f6b2"

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
