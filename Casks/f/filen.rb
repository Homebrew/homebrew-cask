cask "filen" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.0.55"
  sha256 arm:          "74076ba28b26b87996b783c875783cbce46d18815c4f3a2bedafb41399fe9fee",
         intel:        "5c2077ea7b0a2a7af3a3886c55b82347c55fb06d6d7cb265f516eb3871741eff",
         arm64_linux:  "aac5dc93301d8e13ceeb677ff6c4e100517fe6f0bfd44c09e9aefa9bb6e484da",
         x86_64_linux: "6d7d2e6e7b8b3bc46022da84d3d16b693e808cee7a32f734a54699851c7abdd7"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "Filen.app"

    zap trash: [
      "~/Library/Application Support/@filen",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.filen.desktop.sfl*",
      "~/Library/Application Support/filen-desktop",
      "~/Library/Caches/@filendesktop-updater",
      "~/Library/Caches/io.filen.desktop",
      "~/Library/Caches/io.filen.desktop.ShipIt",
      "~/Library/HTTPStorages/io.filen.desktop",
      "~/Library/Logs/filen-desktop",
      "~/Library/Preferences/io.filen.desktop.plist",
      "~/Library/Saved Application State/io.filen.desktop.savedState",
    ]
  end
  on_linux do
    app_image "Filen_linux_#{arch}.AppImage", target: "Filen.AppImage"

    zap trash: [
      "~/.cache/@filendesktop-updater",
      "~/.config/@filen",
    ]
  end

  url "https://cdn.filen.io/@filen/desktop/release/v#{version}/Filen_#{os}_#{arch}.#{url_end}"
  name "Filen"
  desc "Desktop client for Filen.io"
  homepage "https://filen.io/"

  livecheck do
    url "https://cdn.filen.io/@filen/desktop/release/latest/latest-mac.yml"
    strategy :electron_builder
  end
end
