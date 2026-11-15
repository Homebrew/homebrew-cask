cask "pake-app" do
  version "1.6.4"
  sha256 "b61e45b549fd4319af782be18284ce8d8affa379b4674527d175033429f80dcd"

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
