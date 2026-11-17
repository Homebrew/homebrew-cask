cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.3.1"
  sha256 arm:          "f6a7e41846d30ff1e236532d6ab2cdfea45dc573017147a182311e77034aadb0",
         intel:        "a7d715a36fd47303f2b414c88a01e1717bcd1dd3253f6fd42f7a6af8a0712934",
         arm64_linux:  "41aa3eea9e90d436e787cf9cbccd4de638eb6704333641978a82dedd093f7dd7",
         x86_64_linux: "7eb7e88856218a8b27cfbe22753edf8e77e5bfca81ed39d77c0e74af9d82092a"

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
