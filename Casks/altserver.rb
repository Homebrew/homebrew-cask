cask "altserver" do
  version "1.4.2,41"
  sha256 "814e573e8275e1d608f4b63f85fd9292451c614e565ab6b61156693eaf9b7967"

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
