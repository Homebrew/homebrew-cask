cask "moonfin" do
  version "3.1.1"
  sha256 "15eeb4f1c282795999d8c2ba8ebc307f18a501382323f9408c00b01eb166da59"

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
