cask "menubarx" do
  version "1.5.5,157"
  sha256 "978f22dd7d77a98e2149df08b93b2ad665d88e44a38f68b01396a03e829c326c"

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
