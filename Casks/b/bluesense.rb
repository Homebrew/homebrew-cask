cask "bluesense" do
  version "1.3.1"
  sha256 :no_check

  url "https://apps.inspira.io/updates/bluesense.zip"
  name "BlueSense"
  desc "Detect the presence of your Bluetooth device"
  homepage "https://apps.inspira.io/bluesense/"

  deprecate! date: "2025-03-30", because: :unmaintained

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
