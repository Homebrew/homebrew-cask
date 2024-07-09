cask "bluesense" do
  version "1.3.1"
  sha256 :no_check

  url "https://apps.inspira.io/updates/bluesense.zip"
  name "BlueSense"
  desc "Detect the presence of your Bluetooth device"
  homepage "https://apps.inspira.io/bluesense/"

  livecheck do
    url "https://apps.inspira.io/updates/bluesense-appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "BlueSense.app"

  zap trash: [
        "~/Library/Application Support/BlueSense",
        "~/Library/Caches/com.inspira.bluesense",
        "~/Library/Preferences/com.inspira.bluesense.plist",
      ],
      rmdir: "~/Library/Application Scripts/com.inspira.bluesense"

  caveats do
    requires_rosetta
  end
end
