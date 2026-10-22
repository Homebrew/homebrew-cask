cask "tldraw" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac", linux: "linux"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.23.0"
  sha256 arm:          "fa75a34b1d7b6c8d45041d460c1dd20fdfb3debccd3d0072a708b6aa07efe3ed",
         intel:        "fa75a34b1d7b6c8d45041d460c1dd20fdfb3debccd3d0072a708b6aa07efe3ed",
         arm64_linux:  "6c9c8c079a630c1cd199bd683f210b172821286b1f6448bb2c239d654aae3016",
         x86_64_linux: "24849ba65a7f00e724a1ea753d0d23c664c907141178cf19214d10adfc2a433d"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "tldraw offline.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tldraw.desktop.sfl*",
      "~/Library/Application Support/tldraw",
      "~/Library/Caches/@tldesktop-updater",
      "~/Library/Caches/com.tldraw.desktop",
      "~/Library/Caches/com.tldraw.desktop.ShipIt",
      "~/Library/HTTPStorages/com.tldraw.desktop",
      "~/Library/Preferences/com.tldraw.desktop.plist",
    ]
  end
  on_linux do
    app_image "tldraw-offline-linux-#{arch}.AppImage", target: "tldraw offline.AppImage"

    zap trash: [
      "~/.cache/@tldesktop-updater",
      "~/.config/tldraw",
    ]
  end

  url "https://github.com/tldraw/tldraw-offline/releases/download/v#{version}/tldraw-offline-#{os}-#{arch_end}.#{url_end}"
  name "tldraw offline"
  desc "Editor for .tldr files"
  homepage "https://github.com/tldraw/tldraw-offline"
end
