cask "altserver" do
  version "1.4.3,50"
  sha256 "d911b4509325f571015e9a4f6f372d471ffafed25f741cfbfde80cac8dcef353"

  url "https://f000.backblazeb2.com/file/altstore/altserver/#{version.before_comma.dots_to_underscores}.zip",
      verified: "f000.backblazeb2.com/file/"
  name "AltServer"
  homepage "https://altstore.io/"

  livecheck do
    url "https://altstore.io/altserver/sparkle-macos.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "AltServer.app"

  uninstall quit: "com.rileytestut.AltServer"

  zap trash: [
    "~/Library/Caches/com.rileytestut.AltServer",
    "~/Library/Cookies/com.rileytestut.AltServer.binarycookies",
    "~/Library/Preferences/com.rileytestut.AltServer.plist",
  ]
end
