cask "qth" do
  version "0.8.2"
  sha256 "61120e686e7d9e5e2922fc0b4d8321ec1e566584907a1d2629a6d9c6ccf66979"

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
