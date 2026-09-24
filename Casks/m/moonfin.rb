cask "moonfin" do
  version "2.6.0"
  sha256 "354391a46f79458de9a77327f342672308bd755aba6c665af784c2461bd99be2"

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
