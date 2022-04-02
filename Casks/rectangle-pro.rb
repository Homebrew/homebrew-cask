cask "rectangle-pro" do
  version "2.3,107"
  sha256 "e84d4899f24abddf829cee05dd46a16d6978580b68b69a306d9538091eb3ad2e"

  url "https://rectangleapp.com/pro/downloads/Rectangle%20Pro%20#{version.csv.first}.dmg"
  name "Rectangle Pro"
  desc "Window snapping tool"
  homepage "https://rectangleapp.com/pro"

  livecheck do
    url "https://rectangleapp.com/pro/downloads/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Rectangle Pro.app"

  uninstall quit: "com.knollsoft.Hookshot"

  zap trash: [
    "~/Library/Application Support/Rectangle Pro",
    "~/Library/Caches/com.knollsoft.Hookshot",
    "~/Library/Cookies/com.knollsoft.Hookshot.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Hookshot",
    "~/Library/HTTPStorages/com.knollsoft.Hookshot.binarycookies",
    "~/Library/Preferences/com.knollsoft.Hookshot.plist",
  ]
end
