cask "bluesense" do
  version "1.3.1"
  sha256 "303f00fc55208ab9340c6142b018e6b6daeef54a7ef4db41fbcb79377866e9a3"

  url "https://apps.inspira.io/updates/bluesense.zip"
  appcast "https://apps.inspira.io/updates/bluesense-appcast.xml"
  name "BlueSense"
  homepage "https://apps.inspira.io/bluesense/"

  depends_on macos: ">= :yosemite"

  app "BlueSense.app"

  zap trash: [
    "~/Library/Preferences/com.inspira.bluesense.plist",
    "~/Library/Application Support/BlueSense",
    "~/Library/Caches/com.inspira.bluesense",
  ],
      rmdir: "~/Library/Application Scripts/com.inspira.bluesense"
end
