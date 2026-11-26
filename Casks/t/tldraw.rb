cask "tldraw" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac", linux: "linux"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.25.0"
  sha256 arm:          "4a681cdd40d4764b6a8c314990a51a53efff8fa42dd686d60ca46e097b5272ab",
         intel:        "4a681cdd40d4764b6a8c314990a51a53efff8fa42dd686d60ca46e097b5272ab",
         arm64_linux:  "1b296ee6e0c1b02522de4e98e2d493306c6e9dab5f3960f2cd2445d69277e6b6",
         x86_64_linux: "1c4fa3ab89762c126377966ae07bc73a9e10b319a4567a143c5a58d7e9121d56"

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
