cask "filen" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "3.0.52"
  sha256 arm:          "8ce4e9cba97686b4715d3c261dd1b93a36299e90b0ade9b66ed283859ac228bd",
         intel:        "eb466baf847706998740e6860056dfee836f750e871251844129aa35e53967dd",
         x86_64_linux: "b07f79c4d02e5c8bea8b7762fea23f07c2d12bb336023e7ea429d288dfe63156",
         arm64_linux:  "ca94a125d28840f64ac76f6ea5de010f8e2f7c6d5d50abc187e3d9daf6948c57"

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
