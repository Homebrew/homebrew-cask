cask "onecast" do
  version "2.35"
  sha256 "9ae5a9d354ac738009a51c558a55923851b856f2e2b0cbb3652f57ec00662cdc"

  url "https://onecast.me/updates/release/OneCast-#{version}.dmg"
  name "OneCast"
  desc "Xbox remote play"
  homepage "https://www.onecast.me/"

  livecheck do
    url "https://www.onecast.me/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "OneCast.app"

  zap trash: [
    "~/Library/Caches/com.onecast.macos",
    "~/Library/HTTPStorages/com.onecast.macos",
    "~/Library/Preferences/com.onecast.macos.plist",
    "~/Library/WebKit/com.onecast.macos",
  ]
end
