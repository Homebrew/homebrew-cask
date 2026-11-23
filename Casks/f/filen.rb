cask "filen" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.0.54"
  sha256 arm:          "da2228e126e7fe1356e7b8513edc83312a7f183e8e0679cb1a9ab722a1632cc1",
         intel:        "ebd19b55e4e1308b0fedc49a752996e9cce3aaafbf7c1b9820d4d9947c0a69e2",
         arm64_linux:  "6dabe1ac2ebfb496fd208ecc28d905b56a9a76c90443982769fc758d56136600",
         x86_64_linux: "bb6c26cca95bec0abe4fb9a95a1a5c6d5e08b67204a0c24f2bafe0bfe33d43e3"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

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
