cask "moonfin" do
  version "2.3.2"
  sha256 "cbef30504e0f174284d6a0b7f4dd34b5dc41e3b5eb8ee01c627a353ad5da9feb"

  url "https://github.com/Moonfin-Client/Moonfin-Core/releases/download/#{version}/Moonfin_macOS_v#{version}.dmg"
  name "Moonfin"
  desc "Media streaming client for Jellyfin and Emby"
  homepage "https://moonfin.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Moonfin.app"

  zap trash: [
        "/Library/Preferences/org.moonfin.app.plist",
        "~/Documents/Moonfin/DB/offline.db",
      ],

      rmdir: "~/Documents/Moonfin"
end
