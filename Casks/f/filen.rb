cask "filen" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "3.0.47"
  sha256 arm:          "041f30b361fb5b07f9039d380cf9f3e56b1180491a1ebf711cc5d2d81d5f741b",
         intel:        "405a75b94f26814562f568e5098735ce28bbe80317f47eef920b993bc6b4ef69",
         x86_64_linux: "91e683e4f52392816b1530ae6a9e03be662ae57dd38e7abe9e3b622e0019f56f",
         arm64_linux:  "e28d9fbe1458f7050647bf6117ac8182d9bac851239e5f49fb241d74597e6ac7"

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
