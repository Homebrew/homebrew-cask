cask "onecast" do
  version "2.36"
  sha256 "294bb7e01e897c097849ef170ef6ad15f7cf8507692283013ff473500303a6b0"

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
