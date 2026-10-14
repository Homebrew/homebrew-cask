cask "tldraw" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac", linux: "linux"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.22.0"
  sha256 arm:          "add82e859ee813f03be8778ce26564a2276c601285e1816ffc0252aa6d850f4a",
         intel:        "add82e859ee813f03be8778ce26564a2276c601285e1816ffc0252aa6d850f4a",
         arm64_linux:  "07af6c84bd722423f1b4c7e775b82e616c13cc36c54ba6e8518e06de642116b1",
         x86_64_linux: "a0daca48f5bbfbcfb85c2b2d4a0e7ad97e75710497a5ef1bb12e6de1bb2e6978"

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
