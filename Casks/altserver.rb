cask "altserver" do
  version "1.4"
  sha256 "1107c408f584dd2b3579562ecda59544b1f6547a1fb025c1a502a19b972c4272"

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
