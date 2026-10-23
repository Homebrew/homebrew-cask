cask "tldraw" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac", linux: "linux"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.23.1"
  sha256 arm:          "d5a85d77165e594a0bdac10dce64079cac57c864aa17ff0f5a000fae5052c495",
         intel:        "d5a85d77165e594a0bdac10dce64079cac57c864aa17ff0f5a000fae5052c495",
         arm64_linux:  "6ef8b8639a722b0e5ab70f8f0799a614f6ef52c71e53483519f79adf6b6f4218",
         x86_64_linux: "19499a0074f97f44235c7bffd3d0ff4474ace1312c0ea9695b965ca9060fbadf"

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
