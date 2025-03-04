cask "nova" do
  version "12.4"
  sha256 "6c38ebe5bc6ae85e5b99803186321d73ae2e1df69aa4081f50babea3e46e492b"

  url "https://download-cdn.panic.com/nova/Nova%20#{version}.zip",
      verified: "download-cdn.panic.com/nova/"
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  livecheck do
    url "https://circle.panic.com/api/v1/appcast/nova/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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
