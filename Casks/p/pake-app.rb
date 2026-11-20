cask "pake-app" do
  version "1.10.1"
  sha256 "1d818312ae3fc7a74e22fc2ff6b4fefb1b859ff460c9f7e30f95f81d9f37cb37"

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
