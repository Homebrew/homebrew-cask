cask "qth" do
  version "0.6.3"
  sha256 "8120174a4c34d47b61444d32efc87ad29b9b1949a6624b3de3bb8554e37a1131"

  url "https://www.w8wjb.com/qth/QTH-#{version}.dmg"
  name "QTH"
  desc "APRS client application"
  homepage "https://www.w8wjb.com/wp/qth/"

  livecheck do
    url "https://www.w8wjb.com/wp/qth/qth-app-changelog/"
    regex(%r{href=.*?/QTH[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "QTH.app"

  zap trash: [
    "~/Library/Application Support/com.w8wjb.QTH",
    "~/Library/Caches/com.apple.helpd/Generated/com.w8wjb.QTH.help*",
    "~/Library/Logs/com.w8wjb.QTH",
    "~/Library/Preferences/com.w8wjb.QTH.plist",
  ]
end
