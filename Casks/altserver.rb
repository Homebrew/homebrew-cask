cask "altserver" do
  version "1.4.6,55"
  sha256 "983fba5a785e753f9bc020b39e84b41516c1181cb5b9ffc492f9f54274be1f74"

  url "https://f000.backblazeb2.com/file/altstore/altserver/#{version.before_comma.dots_to_underscores}.zip",
      verified: "f000.backblazeb2.com/file/"
  name "AltServer"
  desc "iOS App Store alternative"
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
