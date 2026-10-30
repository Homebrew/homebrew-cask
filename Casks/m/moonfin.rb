cask "moonfin" do
  version "2.8.0"
  sha256 "e043cede1c64b0f7121b2a6400c8f6537ea4b26a5ff00f52feb8c910050e0018"

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
      ],

      rmdir: "~/Documents/Moonfin"
end
