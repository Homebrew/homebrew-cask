cask "bluesense" do
  version "1.3.1,1657"
  sha256 :no_check

  url "https://apps.inspira.io/updates/bluesense.zip"
  name "BlueSense"
  homepage "https://apps.inspira.io/bluesense/"

  livecheck do
    url "https://apps.inspira.io/updates/bluesense-appcast.xml"
    strategy :sparkle
  end

  app "BlueSense.app"

  zap trash: [
        "~/Library/Preferences/com.inspira.bluesense.plist",
        "~/Library/Application Support/BlueSense",
        "~/Library/Caches/com.inspira.bluesense",
      ],
      rmdir: "~/Library/Application Scripts/com.inspira.bluesense"
end
