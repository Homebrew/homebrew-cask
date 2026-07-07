cask "beekeeper-studio" do
  arch arm: "-arm64"

  version "5.9.1"
  sha256 arm:          "51fc3e09aeef0bcee4ea0e8ba4aa7aa09c6be1d10cac59f37af12e5cee2f8c16",
         intel:        "3e432b07f27f66c6938f479961fad20f9e9ae89861a788ff58e2e1b6d31a19f2",
         arm64_linux:  "f9088f59d20519c5bc0cd76ab046f7518cedfd7b002a1650a6b36f2bafb5e03b",
         x86_64_linux: "34b615de535df2fdd8c9a460b9316b351e8ff4a8cba2855a88b9efc68c2a5b81"

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
