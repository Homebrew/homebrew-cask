cask "menubarx" do
  version "1.6.1"
  sha256 "c7354cf02fd1dcfd33aed915abb035f1f2e481c22f60c6c162d62f18d93f9c0e"

  url "https://menubarx-1251679148.file.myqcloud.com/download/MenubarX-#{version}.dmg",
      verified: "menubarx-1251679148.file.myqcloud.com/download/"
  name "MenubarX"
  desc "Menu bar browser"
  homepage "https://menubarx.app/"

  livecheck do
    url "https://menubarx.app/appcast.xml"
    strategy :sparkle, &:short_version
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
