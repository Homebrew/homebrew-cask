cask "mole-app" do
  version "1.11.0"
  sha256 :no_check

  url "https://mole.fit/Mole.dmg"
  name "Mole"
  desc "Deep clean, analyze, and optimize app"
  homepage "https://mole.fit/"

  livecheck do
    url "https://mole.fit/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mole.app"

  zap trash: [
    "/Library/Mole",
    "~/.config/mole/",
    "~/Library/Application Support/com.tw93.MoleApp",
    "~/Library/Caches/com.tw93.MoleApp",
    "~/Library/HTTPStorages/com.tw93.MoleApp",
    "~/Library/HTTPStorages/com.tw93.MoleApp.binarycookies",
    "~/Library/Logs/mole",
    "~/Library/Preferences/com.tw93.MoleApp.plist",
    "~/Library/WebKit/com.tw93.MoleApp",
  ]
end
