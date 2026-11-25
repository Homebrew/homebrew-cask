cask "tldraw" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac", linux: "linux"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.24.1"
  sha256 arm:          "4ccf790d462cbc7def653a3747f1a1285e35787d58749e57e74dbf001d97f34e",
         intel:        "4ccf790d462cbc7def653a3747f1a1285e35787d58749e57e74dbf001d97f34e",
         arm64_linux:  "ffe195d982b9b3799a34c096b9f04c3df007eaf4a2fafb0d3b723c36e98497ad",
         x86_64_linux: "5fb084df2a459c92259c440c0dca5c50e11612d19d0575c9cd3c501a63941941"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "tldraw office.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tldraw.desktop.sfl*",
      "~/Library/Application Support/tldraw",
      "~/Library/Caches/@tldesktop-updater",
      "~/Library/Caches/@tloffline-updater",
      "~/Library/Caches/com.tldraw.desktop",
      "~/Library/Caches/com.tldraw.desktop.ShipIt",
      "~/Library/HTTPStorages/com.tldraw.desktop",
      "~/Library/Preferences/com.tldraw.desktop.plist",
    ]
  end
  on_linux do
    app_image "tldraw-office-linux-#{arch}.AppImage", target: "tldraw office.AppImage"

    zap trash: [
      "~/.cache/@tldesktop-updater",
      "~/.cache/@tloffline-updater",
      "~/.config/tldraw",
    ]
  end

  url "https://github.com/tldraw/tldraw-office/releases/download/v#{version}/tldraw-office-#{os}-#{arch_end}.#{url_end}"
  name "tldraw office"
  desc "Editor for .tldr files"
  homepage "https://github.com/tldraw/tldraw-office"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
