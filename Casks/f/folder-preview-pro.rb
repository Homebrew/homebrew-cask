cask "folder-preview-pro" do
  version "2.3"
  sha256 :no_check

  url "https://anybox.ltd/folder-preview-pro/download/folder-preview-pro-latest.zip"
  name "Folder Preview Pro"
  desc "Quick Look extension for folders"
  homepage "https://anybox.ltd/folder-preview-pro"

  livecheck do
    url "https://anybox.ltd/folder-preview-pro/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Folder Preview Pro.app"

  zap trash: [
    "~/Library/Application Scripts/ltd.anybox.FolderPreview.Pro",
    "~/Library/Application Scripts/ltd.anybox.FolderPreview.Pro.ArchivePreview",
    "~/Library/Application Scripts/ltd.anybox.FolderPreview.Pro.Extension",
    "~/Library/Application Scripts/S8MRM84X6F.group.ltd.anybox.FolderPreview.Pro",
    "~/Library/Containers/ltd.anybox.FolderPreview.Pro",
    "~/Library/Containers/ltd.anybox.FolderPreview.Pro.ArchivePreview",
    "~/Library/Containers/ltd.anybox.FolderPreview.Pro.Extension",
    "~/Library/Group Containers/S8MRM84X6F.group.ltd.anybox.FolderPreview.Pro",
    "~/Library/Preferences/ltd.anybox.FolderPreview.Pro.ArchivePreview.plist",
    "~/Library/Preferences/ltd.anybox.FolderPreview.Pro.Extension.plist",
  ]
end
