cask "qth" do
  version "0.8.5"
  sha256 "0d74eb684f20a768c681247fc52b17f3fee72cb2cfe34dbf5f100149ff10ae46"

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
