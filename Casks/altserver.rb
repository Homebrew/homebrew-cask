cask "altserver" do
  version "1.4.4,51"
  sha256 "18a4d37fd91fba892de8c186f176904c268125b411eeb2a19ed6e4b5a8d9de76"

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
