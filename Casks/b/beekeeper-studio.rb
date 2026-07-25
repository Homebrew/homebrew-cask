cask "beekeeper-studio" do
  arch arm: "-arm64"

  version "5.9.2"
  sha256 arm:          "b737b2f7782847e5cf073cc148edbe18356316ecf10c82f49d2145f8c4046cc8",
         intel:        "61a3a0fe2a3628c591b5cad47dec4a741944cbabfc1f82d4d2c47e2c7be79f29",
         arm64_linux:  "4f994ff8c465261bb28781594634cfe1902e07edb9336c325e7c009d8631356d",
         x86_64_linux: "b2e2e7a891ef08eede9f67dec318e80e001f27ea7d2b441463b8635823172201"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}#{arch}#{url_end}",
      verified: "github.com/beekeeper-studio/beekeeper-studio/"
  name "Beekeeper Studio"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "Beekeeper Studio.app"

    zap trash: [
      "~/Library/Application Support/beekeeper-studio",
      "~/Library/Application Support/Caches/beekeeper-studio-updater",
      "~/Library/Caches/io.beekeeperstudio.desktop",
      "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
      "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
      "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
      "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
    ]
  end

  on_linux do
    app_image "Beekeeper-Studio-#{version}#{arch}.AppImage", target: "Beekeeper Studio.AppImage"
  end
end
