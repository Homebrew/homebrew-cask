cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.2.0"
  sha256 arm:          "bf38ab6216118d2c83d295075a5d303d23b7214710411bcbb3b7914dcbe301e5",
         intel:        "59e4978e4276a7c4b6fce725033c0f101e8fa87ad7808aa1babde4713a5cc7c3",
         arm64_linux:  "f19967a1bbd115c6dfba3c43769ec9741e7a11c59279c1a295ae92ee2c8099c1",
         x86_64_linux: "e097af9c8fb578666b0fcff77ed92c3a0b52977c5aff434173fd6d7bb6ac0f12"

  on_macos do
    auto_updates true
    depends_on macos: :ventura

    app "Beekeeper Studio.app"

    zap trash: [
      "~/Library/Application Support/beekeeper-studio",
      "~/Library/Application Support/Caches/beekeeper-studio-updater",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.beekeeperstudio.desktop.sfl*",
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

  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}#{arch}.#{os}"
  name "Beekeeper Studio"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
