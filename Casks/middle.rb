cask "middle" do
  version "1.5.15,49"
  sha256 "874d79ba48160916ee37d26a28c5ce131fdc6d9f4e963f57fde11e19fc711a87"

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
