cask "tldraw" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac", linux: "linux"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.21.0"
  sha256 arm:          "6f9e0764750ad716f551969ac38845b36ecc1de26b3fc677658707d47f868dbb",
         intel:        "6f9e0764750ad716f551969ac38845b36ecc1de26b3fc677658707d47f868dbb",
         arm64_linux:  "6a6b64a4e30f2bf435fc05092e76759700b8847f8d737f41d5c5cd9c9e4c0806",
         x86_64_linux: "1693d92d17502c6fb7a45839b27c48ff2404ecb1acd17c6f3db29f5da3c1119b"

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
