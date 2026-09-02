cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.3"
  sha256 arm:          "75dc734f0c1106f04a6e7d091f8ed1ae7eaff56a2af19472214b32ca1cc7936d",
         intel:        "8992ed229986ea9ce43f1b72be39ba6c6e9d5041dc496479208a313fb19a5a45",
         arm64_linux:  "386d48ebea6b4b01ce211ff6e8fb7ff8c68c7e5e4eba5d6b18ebab2912e9ff31",
         x86_64_linux: "d62199c3ffec2c278d42c5bb5633c651688028220bd5876933904e13be5cd88b"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :big_sur

    app "Koodo Reader.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/xyz.960960.koodo.sfl*",
      "~/Library/Application Support/koodo-reader",
      "~/Library/Preferences/xyz.960960.koodo.plist",
      "~/Library/Saved Application State/xyz.960960.koodo.savedState",
    ]
  end
  on_linux do
    app_image "Koodo-Reader-#{version}-#{arch}.AppImage", target: "Koodo Reader.AppImage"
  end

  url "https://github.com/koodo-reader/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-#{arch}.#{os}"
  name "Koodo Reader"
  desc "Open-source e-book reader"
  homepage "https://www.koodoreader.com/en"
end
