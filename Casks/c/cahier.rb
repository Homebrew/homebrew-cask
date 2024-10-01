cask "cahier" do
  version "0.8.3"
  sha256 "6a9eded9a688fa166da8ff7aaceaef8ffa075716c38804479b8a7c2342157796"

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
end
