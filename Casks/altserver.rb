cask "altserver" do
  version "1.5,65"
  sha256 "fd9b551fe34054355489f1fa37c5154a581f4248d2b412c80aeb7dc9b7e4d2ce"

  url "https://cdn.altstore.io/file/altstore/altserver/#{version.csv.first.dots_to_underscores}.zip"
  name "AltServer"
  desc "iOS App Store alternative"
  homepage "https://altstore.io/"

  livecheck do
    url "https://altstore.io/altserver/sparkle-macos.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "AltServer.app"

  uninstall quit: "com.rileytestut.AltServer"

  zap trash: [
    "~/Library/Caches/com.rileytestut.AltServer",
    "~/Library/Cookies/com.rileytestut.AltServer.binarycookies",
    "~/Library/Preferences/com.rileytestut.AltServer.plist",
  ]
end
