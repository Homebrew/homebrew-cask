cask "tldraw" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac", linux: "linux"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.24.0"
  sha256 arm:          "2cbde5be219f3530ea6ab09f435c75364882c2cc545a8f8aec1d2a13e4922b0b",
         intel:        "2cbde5be219f3530ea6ab09f435c75364882c2cc545a8f8aec1d2a13e4922b0b",
         arm64_linux:  "ade8374e1d87eb5b79a2d8509cb30372d2ad33367ad6d85cdf49d6ee89ff2d04",
         x86_64_linux: "d47b5643c6035488d45659b4e8b9ec2225bf12804149f87a3a3baf7a5c2739da"

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
end
