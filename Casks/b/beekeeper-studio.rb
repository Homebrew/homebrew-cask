cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.3.2"
  sha256 arm:          "8ebf4b887efe9ef7071785048a29bf2f47f52e1a05672c96d1fb5bf2a5062f30",
         intel:        "f16162c17b7d2039ad3d12574c52b2b6d7e9f66de6c36eccf553e5fe54a33bde",
         arm64_linux:  "8a225f887621f556acbb85940b36a33235b0817d2aea8f3386231f6b531ba6b6",
         x86_64_linux: "5227e9df22f5723dccb29a408414ef11f621449eafb785b6c7aa1b82c74af856"

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
