cask "heynote" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.9.1"
  sha256 arm:          "6db5ca77fb01004b6d041fc2a22660c1b25de8b16f6323598aaf163f7efe90d8",
         intel:        "f24a919f37e24dfd5cdd69f6e4f2c330f6033384521cead8a9b8968b8150540f",
         x86_64_linux: "dfb6acdbd261e57cf79c45b96abc83e76a6ea9a0a203194c06cf9a44865b6d4f"

  on_macos do
    depends_on macos: :monterey

    app "Heynote.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.heynote.app.sfl*",
      "~/Library/Application Support/Heynote",
      "~/Library/Caches/com.heynote.app",
      "~/Library/Caches/com.heynote.app.ShipIt",
      "~/Library/Caches/heynote-updater",
      "~/Library/HTTPStorages/com.heynote.app",
      "~/Library/Logs/Heynote",
      "~/Library/Preferences/ByHost/com.heynote.app.ShipIt.*.plist",
      "~/Library/Preferences/com.heynote.app.plist",
      "~/Library/Saved Application State/com.heynote.app.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Heynote_#{version}_#{arch}.AppImage", target: "Heynote.AppImage"

    zap trash: "~/.config/Heynote"
  end

  url "https://github.com/heyman/heynote/releases/download/v#{version}/Heynote_#{version}_#{arch}.#{os}"
  name "Heynote"
  desc "Dedicated scratchpad for developers"
  homepage "https://heynote.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
