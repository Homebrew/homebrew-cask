cask "qth" do
  version "0.6.4"
  sha256 "824aa1d13a154fcb1f46d7909f2d6d746331680db002506e8c6736bdafd413f4"

  url "https://www.w8wjb.com/qth/QTH-#{version}.dmg"
  name "QTH"
  desc "APRS client application"
  homepage "https://www.w8wjb.com/wp/qth/"

  livecheck do
    url "https://www.w8wjb.com/wp/qth/qth-app-changelog/"
    regex(%r{href=.*?/QTH[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "QTH.app"

  zap trash: [
    "~/Library/Application Support/com.w8wjb.QTH",
    "~/Library/Caches/com.apple.helpd/Generated/com.w8wjb.QTH.help*",
    "~/Library/Logs/com.w8wjb.QTH",
    "~/Library/Preferences/com.w8wjb.QTH.plist",
  ]
end
