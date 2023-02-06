cask "menubarx" do
  version "1.5.6,160"
  sha256 "82d841e31b17fb6659bb771a47b3e82c993e2386d3f43f8afa3485d00ae8c28d"

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
