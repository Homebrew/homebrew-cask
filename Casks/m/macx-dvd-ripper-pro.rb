cask "macx-dvd-ripper-pro" do
  version "6.8.2"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg"
  name "MacX DVD Ripper Pro"
  desc "DVD ripping application"
  homepage "https://www.macxdvd.com/mac-dvd-ripper-pro/"

  livecheck do
    url :homepage
    regex(/Version:\s+(\d+(?:\.\d+)*)/i)
  end

  app "MacX DVD Ripper Pro.app"

  zap trash: [
    "~/Library/Application Support/Digiarty/MacX DVD Ripper Pro",
    "~/Library/Caches/com.macxdvd.macxvideoconverterpro",
    "~/Library/HTTPStorages/com.macxdvd.macxvideoconverterpro",
    "~/Library/Preferences/com.macxdvd.macxvideoconverterpro.plist",
    "~/Library/Saved Application State/com.macxdvd.macxvideoconverterpro.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
