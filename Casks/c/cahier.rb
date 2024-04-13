cask "cahier" do
  version "0.4.6"
  sha256 "918a4a56b59bdcf53e3ff8ff1532a91487b470eb3b77e61b298e0174b5e667ee"

  url "https://getcahier.com/releases-macos/cahier-#{version}.dmg"
  name "Cahier"
  desc "Knowledge base with native support for research"
  homepage "https://getcahier.com/"

  livecheck do
    url "https://getcahier.com/releases-macos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Cahier.app"

  zap trash: [
        "~/Library/HTTPStorages/org.Cahier-App.Cahier",
        "~/Library/Preferences/com.cahier-app.Cahier.plist",
        "~/Library/Preferences/org.Cahier-App.Cahier.plist",
        "~/Library/Saved Application State/org.Cahier-App.Cahier.savedState",
      ],
      rmdir: "~/Documents/Cahier"

  caveats do
    requires_rosetta
  end
end
