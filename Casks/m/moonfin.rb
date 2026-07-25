cask "moonfin" do
  version "2.3.0"
  sha256 "fbf22172b2e3a4e13ccf49c07cf07d02eca469c0f63c1ed062fbd099b0b0c9ba"

  url "https://github.com/Moonfin-Client/Moonfin-Core/releases/download/#{version}/Moonfin_macOS_v#{version}.dmg"
  name "moonfin"
  desc "Media streaming client for Jellyfin and Emby"
  homepage "https://moonfin.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Moonfin.app"

  zap trash: [
        "/Library/Preferences/org.moonfin.app.plist",
        "~/Documents/Moonfin/DB/offline.db",
      ],

      rmdir: "~/Documents/Moonfin"
end
