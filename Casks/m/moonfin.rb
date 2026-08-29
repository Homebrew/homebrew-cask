cask "moonfin" do
  version "2.5.1"
  sha256 "2105316137ba140fc41d0976281ef75bddac8b29ab3e55c7f6e4d6ce72542475"

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
