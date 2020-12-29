cask "middle" do
  version "1.5.13,47"
  sha256 "86be3b15c6566fcc45e99fdcc217c3fd234bd485f64a70ab2074007dc797f5de"

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
