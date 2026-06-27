cask "beekeeper-studio" do
  arch arm: "-arm64"

  version "5.8.1"
  sha256 arm:          "7d4a9d24336b5a1d29b3f33ca16b71f91d6b9bb11c3e116f9d4c9e23b57b6e77",
         intel:        "8bbc4c65923f97e24ecefd3a20ed957686a521b198d6e637bbcf792164834f84",
         arm64_linux:  "98fc48c1dda8e8219b4d514004f343447b0bbb6c15a24c299712039eac1b83f3",
         x86_64_linux: "62a487431fd4586647927410b15a0969f8d50cf175ef7aa5f05f9c7819164c5a"

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
