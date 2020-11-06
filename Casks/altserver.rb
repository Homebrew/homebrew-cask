cask "altserver" do
  version "1.4.1"
  sha256 "6c7c72f4fd2536e56ebd63f424e19fe00f51ae9360ca2089fd4e7eaf061b1cc8"

  # f000.backblazeb2.com/file/ was verified as official when first introduced to the cask
  url "https://f000.backblazeb2.com/file/altstore/altserver/#{version.dots_to_underscores}.zip"
  appcast "https://altstore.io/altserver/sparkle-macos.xml"
  name "AltServer"
  homepage "https://altstore.io/"

  depends_on macos: ">= :mojave"

  app "AltServer.app"

  uninstall quit: "com.rileytestut.AltServer"

  zap trash: [
    "~/Library/Caches/com.rileytestut.AltServer",
    "~/Library/Cookies/com.rileytestut.AltServer.binarycookies",
    "~/Library/Preferences/com.rileytestut.AltServer.plist",
  ]
end
