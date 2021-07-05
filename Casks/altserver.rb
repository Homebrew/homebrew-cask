cask "altserver" do
  version "1.4.5,52"
  sha256 "98f0adae4c16a3ff395d0a582bd13863187e56d4331b6f3b6be630b1592cba00"

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
