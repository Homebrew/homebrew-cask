cask "menubarx" do
  version "1.5.4,145"
  sha256 "e1cb2c886d95e10d19013c4ded09672cc6e94a390a4dcb4c1b4c42dea5518684"

  url "https://menubarx-1251679148.file.myqcloud.com/download/MenubarX-#{version.csv.first}.dmg",
      verified: "menubarx-1251679148.file.myqcloud.com/download/"
  name "MenubarX"
  desc "Menu bar browser"
  homepage "https://menubarx.app/"

  livecheck do
    url "https://menubarx.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "MenubarX.app"

  zap trash: [
    "~/Library/Application Scripts/com.app.menubarx",
    "~/Library/Application Scripts/com.app.menubarx-helper",
    "~/Library/Containers/com.app.menubarx",
    "~/Library/Containers/com.app.menubarx-helper",
  ]
end
