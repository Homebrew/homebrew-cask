cask "nova" do
  version "10.6"
  sha256 "b41e17c7fb7018d41c202c00e0745dcb68c9275d4681888e729a10898f8e428c"

  url "https://download-keycdn.panic.com/nova/Nova%20#{version}.zip",
      verified: "download-keycdn.panic.com/nova/"
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  livecheck do
    url "https://circle.panic.com/api/v1/appcast/nova/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Nova.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.panic.NovaPrivilegedHelper.plist",
    "/Library/PrivilegedHelperTools/com.panic.NovaPrivilegedHelper",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.panic.Nova.NovaQuickLookPreview",
    "~/Library/Application Scripts/com.panic.Nova.NovaQuickLookThumbnail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.nova.sfl*",
    "~/Library/Caches/com.panic.Nova",
    "~/Library/Containers/com.panic.Nova.NovaQuickLookPreview",
    "~/Library/Containers/com.panic.Nova.NovaQuickLookThumbnail",
    "~/Library/Preferences/com.panic.Nova.plist",
    "~/Library/WebKit/com.panic.Nova",
  ]
end
