cask "filen" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "3.0.53"
  sha256 arm:          "d2a34dc111746abacdf27a684d8e7f9987e0d7279d1989d89a6dcef25842b233",
         intel:        "e2d94ec1476b0d8b0224550f166f6edc8bd23dc70d239ab5a0e8126c0ff2f794",
         x86_64_linux: "888298db82fa43d7be3feeeba86a2f745dbc1ffdf1efabe2cca5144a996461f2",
         arm64_linux:  "5821bd280e89da9cd5362df91d495bb99cd7630b85f51019033c72eb0664e89d"

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
    depends_on macos: :monterey
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
