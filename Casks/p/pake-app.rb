cask "pake-app" do
  version "1.12.0"
  sha256 "c8e62b2d45219b7e4710decf14442d7bb750d5c2db1b8be6eda49f42210ba058"

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
