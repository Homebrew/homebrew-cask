cask "onecast" do
  version "3.1"
  sha256 "c2acdfe4abdae1f1726a45eeb7f5423e5a852793a864016acb40cde318eed41d"

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
