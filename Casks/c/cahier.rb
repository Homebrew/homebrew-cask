cask "cahier" do
  version "0.4.5"
  sha256 "e486789a13ccfa6ba768f09d7e183bcd90c78431359eb31057ae5612dfcd0259"

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
