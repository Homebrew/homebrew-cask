cask "klokki" do
  version "1.3.7"
  sha256 :no_check

  url "https://klokki.com/download/Klokki.dmg"
  name "Klokki"
  desc "Automatic time-tracking solution"
  homepage "https://klokki.com/"

  # The dates in the appcast are sometimes out of order (i.e. a newer version
  # may have an older `pubDate`), so we have to override the default `sparkle`
  # strategy logic to identify the latest version in this case.
  livecheck do
    url "https://klokki.com/download/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Klokki.app"

  uninstall launchctl: "com.klokki-launcher",
            quit:      "com.klokki-launcher"

  zap trash: [
    "~/Library/Application Scripts/com.klokki-launcher",
    "~/Library/Application Support/com.klokki.macos",
    "~/Library/Application Support/Klokki",
    "~/Library/Caches/com.klokki.macos",
    "~/Library/Containers/com.klokki-launcher",
    "~/Library/HTTPStorages/com.klokki.macos",
    "~/Library/HTTPStorages/com.klokki.macos.binarycookies",
    "~/Library/Preferences/com.klokki.macos.plist",
  ]
end
