cask "nova" do
  version "6"
  sha256 "b59441aff6a1189ba383f1cb6f831c5d6ea30225e14b7cdaba77eb826f7ed628"

  url "https://download-cdn.panic.com/nova/Nova%20#{version}.zip",
      verified: "https://download-cdn.panic.com/nova/"
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  livecheck do
    url "https://download-cdn.panic.com/nova/"
    strategy :page_match
    regex(/nova\s(\d+(?:\.\d+)*)\.zip/i)
  end

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
