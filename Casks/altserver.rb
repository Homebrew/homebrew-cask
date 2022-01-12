cask "altserver" do
  version "1.4.8,60"
  sha256 "4c6c6bc6c0d409aa6eef98cb157f1aa4375439fde6dc2a395af79fdd43530054"

  url "https://cdn.altstore.io/file/altstore/altserver/#{version.csv.first.dots_to_underscores}.zip"
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
