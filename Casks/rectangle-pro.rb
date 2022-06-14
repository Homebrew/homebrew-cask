cask "rectangle-pro" do
  version "2.4.5,116"
  sha256 "9628bea97c26041dfd8e1c91e981d0f658f8e2e9aa3bff2bb37f33ef5f3728da"

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
