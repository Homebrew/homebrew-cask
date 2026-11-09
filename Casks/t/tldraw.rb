cask "tldraw" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac", linux: "linux"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.23.2"
  sha256 arm:          "98c42a48f2fab10b07ac3938ee3e589aa922f7f5615608c67fd6b8d1c6da9a92",
         intel:        "98c42a48f2fab10b07ac3938ee3e589aa922f7f5615608c67fd6b8d1c6da9a92",
         arm64_linux:  "9889156a279283d03c028aa3c964b25b163e4f4150b0d985067b28ec389c9a63",
         x86_64_linux: "ce94f1919727a6b9ccbf8633f2bc8a123632ac4eaacd7db897fb3d090915e69a"

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
