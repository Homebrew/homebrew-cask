cask "pake-app" do
  version "1.9.1"
  sha256 "344e7f30703dc234869fdee3900c63d67f8b14f826ae0aa39d31970f223fceb6"

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
