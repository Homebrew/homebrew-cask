cask "mole-app" do
  version "1.9.0"
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
    "~/.config/mole/",
    "~/Library/Caches/com.tw93.MoleApp",
    "~/Library/HTTPStorages/com.tw93.MoleApp",
    "~/Library/Preferences/com.tw93.MoleApp.plist",
  ]
end
