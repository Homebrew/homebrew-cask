cask "cahier" do
  version "0.6.0"
  sha256 "fee50b964513569d9a485a4f815fcff72bcfea35bd0fd4f746064f1bf586785c"

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
