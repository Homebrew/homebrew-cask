cask "pake-app" do
  version "1.8.0"
  sha256 "ea4bda9f37647a6fb26877a4e5341c70773d0ce39abed7f008bdb0eb17be5915"

  url "https://pake.run/updates/mac/Pake-#{version}.dmg"
  name "Pake"
  desc "Turn websites into desktop apps without a toolchain"
  homepage "https://pake.run/"

  livecheck do
    url "https://pake.run/updates/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pake.app"

  zap trash: [
    "~/Library/Application Support/com.tw93.Pake",
    "~/Library/Application Support/Pake",
    "~/Library/Caches/com.tw93.Pake",
    "~/Library/HTTPStorages/com.tw93.Pake",
    "~/Library/Preferences/com.tw93.Pake.plist",
  ]
end
