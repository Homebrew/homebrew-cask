cask "dockmate" do
  version "0.8.7"
  sha256 "0bff2c4b3c915bbd8719a57fd8f2b6c7251af01ceb625bd554fc0326e3fcaf35"

  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/DockMate/DockMate.#{version}.zip",
      verified: "raw.githubusercontent.com/w0lfschild/"
  name "Dock Mate"
  desc "Window previews and controls"
  homepage "https://www.macenhance.com/dockmate"

  livecheck do
    url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/DockMate/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "DockMate.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macenhance.dockmate.sfl*",
    "~/Library/Application Support/com.macenhance.dockmate",
    "~/Library/Application Support/DockMate",
    "~/Library/Caches/com.macenhance.dockmate",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.macenhance.dockmate",
    "~/Library/HTTPStorages/com.macenhance.dockmate",
    "~/Library/HTTPStorages/com.macenhance.dockmate.binarycookies",
    "~/Library/Preferences/com.macenhance.dockmate.plist",
  ]
end
