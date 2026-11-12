cask "moonfin" do
  version "3.1.0"
  sha256 "39edd197a0d714851c54d65de14d7e1e686c4e5687d5ef6ebfb020d798f1d510"

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
