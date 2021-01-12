cask "nova" do
  version "4"
  sha256 "60fefb4c658a5c63ef754f9f9425b6126a7db81b2d36688435fcfb74793bf729"

  url "https://download-cdn.panic.com/nova/Nova%20#{version}.zip",
      verified: "https://download-cdn.panic.com/nova/"
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Nova.app"
  binary "#{appdir}/Nova.app/Contents/SharedSupport/nova"

  zap trash: [
    "~/Library/Application Scripts/com.panic.Nova.NovaQuickLookPreview",
    "~/Library/Application Scripts/com.panic.Nova.NovaQuickLookThumbnail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.nova.sfl2",
    "~/Library/Caches/com.panic.Nova",
    "~/Library/Containers/com.panic.Nova.NovaQuickLookPreview",
    "~/Library/Containers/com.panic.Nova.NovaQuickLookThumbnail",
    "~/Library/Preferences/com.panic.Nova.plist",
    "~/Library/WebKit/com.panic.Nova",
  ]
end
