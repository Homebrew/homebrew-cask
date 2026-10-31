cask "moonfin" do
  version "3.0.0"
  sha256 "b09f659341e2389e88bdee43b62bbac6c3afb25ab69b1db53a4d26ed48653c3d"

  url "https://github.com/Moonfin-Client/Moonfin-Core/releases/download/#{version}/Moonfin_macOS_v#{version}.dmg"
  name "Moonfin"
  desc "Media streaming client for Jellyfin and Emby"
  homepage "https://moonfin.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Moonfin.app"

  zap trash: [
        "/Library/Preferences/org.moonfin.app.plist",
        "~/Documents/Moonfin/DB/offline.db",
        "~/Library/Application Support/org.moonfin.app",
        "~/Library/Caches/org.moonfin.app",
        "~/Library/Preferences/org.moonfin.app.plist",
      ],

      rmdir: "~/Documents/Moonfin"
end
