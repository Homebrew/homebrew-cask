cask "middle" do
  version "1.5.18,52"
  sha256 "05f4c73140a4cd2ee018e1f26eacde0b2a61cc95fb3ae22c2a83c09dbcb7eeae"

  url "https://middleclick.app/downloads/Middle#{version.before_comma}.dmg"
  name "Middle"
  homepage "https://middleclick.app/"

  livecheck do
    url "https://middleclick.app/downloads/updates.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Middle.app"

  uninstall quit: "com.knollsoft.Middle"

  zap trash: [
    "~/Library/Containers/com.knollsoft.MiddleLauncher",
    "~/Library/Preferences/com.knollsoft.Middle.plist",
    "~/Library/Caches/com.knollsoft.Middle",
    "~/Library/Cookies/com.knollsoft.Middle.binarycookies",
    "~/Library/Application Support/Middle",
  ]
end
