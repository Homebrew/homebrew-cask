cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.3.3"
  sha256 arm:          "09d238e13a35c3fe07a27691c5663a35b02ef69c46a36802939758d621a799da",
         intel:        "59ba2e98dc25950c01c75f5d4ffe74ca67953159b642800697546b4a893864a4",
         arm64_linux:  "e920997fa1df01c0b9b9ed92841c791287b7fbba2d9a020db4bafe9850f24911",
         x86_64_linux: "469cb400baf0fd3ef5afa2853a5a831678101290dbaf937740f70065f693587e"

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

    zap trash: [
      "~/.cache/beekeeper-studio-updater",
      "~/.config/beekeeper-studio",
    ]
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
