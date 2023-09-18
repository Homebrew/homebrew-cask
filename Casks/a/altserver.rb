cask "altserver" do
  version "1.7"
  sha256 "b30620dce4953f28fadb52730ec80b7bbb21c2e7f12bbce1e0e1b22dc820e62d"

  url "https://cdn.altstore.io/file/altstore/altserver/#{version.dots_to_underscores}.zip"
  name "AltServer"
  desc "iOS App Store alternative"
  homepage "https://altstore.io/"

  livecheck do
    url "https://altstore.io/altserver/sparkle-macos.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "AltServer.app"

  uninstall quit: "com.rileytestut.AltServer"

  zap trash: [
    "~/Library/Caches/com.rileytestut.AltServer",
    "~/Library/Cookies/com.rileytestut.AltServer.binarycookies",
    "~/Library/Preferences/com.rileytestut.AltServer.plist",
  ]
end
