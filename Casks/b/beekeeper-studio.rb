cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.2.2"
  sha256 arm:          "572a645a695dd6dc487fe654d86ff045d1ba68709f631c54e507685ad496d7a8",
         intel:        "3241742d8b884265ed480a1ff2c22487202c81145acb0ef3263488bd390cd7a1",
         arm64_linux:  "0ddfb54a2ff2422242d6fecf9f14a9232a2fe1a5dcd2aec4b2084dab9241165b",
         x86_64_linux: "29013550c7eb591f6beb41ed7b21ed951cf2339f4387eb8a96f1fd025a707824"

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
