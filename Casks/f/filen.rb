cask "filen" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "3.0.50"
  sha256 arm:          "f1733fa58aaa8dc06477ecaaf5fd60f85b209016ff04a5abda29c65fb1fc9cc4",
         intel:        "b0702e4b8b5e40f8e7cd70a6c99f7c138facf8e931644d8a14659b8744dc3c09",
         x86_64_linux: "b2d9810e7786dd4a01773e512b839fdd0baca98c2a139b563c3bfa58eb728277",
         arm64_linux:  "740fdb5e2e8612bc0b45936c3e32bc2e2c34d659b102ce0f68756d817b2b7b83"

  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  url "https://cdn.filen.io/@filen/desktop/release/v#{version}/Filen_#{os}_#{arch}#{url_end}"
  name "Filen"
  desc "Desktop client for Filen.io"
  homepage "https://filen.io/"

  livecheck do
    url "https://cdn.filen.io/@filen/desktop/release/latest/latest-mac.yml"
    strategy :electron_builder
  end

  on_macos do
    depends_on macos: :big_sur
    auto_updates true

    app "Filen.app"

    zap trash: [
      "~/Library/Application Support/@filen",
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
    app_image "Filen_#{os}_#{arch}.AppImage", target: "Filen.AppImage"
  end
end
