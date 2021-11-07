cask "altserver" do
  version "1.4.7,59"
  sha256 "fb1ed7959e8bc9dc54144ed60ba50ccf66212a8ba59cf7c76ae052d8a12e3b56"

  url "https://cdn.altstore.io/file/altstore/altserver/#{version.before_comma.dots_to_underscores}.zip"
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
