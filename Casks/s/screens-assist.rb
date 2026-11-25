cask "screens-assist" do
  version "2.2,32600,5.2"
  sha256 "15f24e0ea123082c7321df9e9782eff14a4ecc1ed494779dc0e461254b5b1c96"

  url "https://updates.edovia.com/com.edovia.screens.connect.express/ScreensAssist_#{version.csv.third}b#{version.csv.second}.zip"
  name "Screens Assist"
  desc "Share screens link"
  homepage "https://edovia.com/en/screens-assist/"

  # The version in the filename doesn't always match the app version, so we
  # have to include it in the cask version.
  livecheck do
    url "https://updates.edovia.com/com.edovia.screens.connect.express/appcast.xml"
    regex(/ScreensAssist[._-]?v?(\d+(?:\.\d+)*)b\d+\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{item.version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Screens Assist.app"

  uninstall quit: "com.edovia.screens.connect.express"

  zap trash: [
    "~/Library/Application Support/com.edovia.screens.connect.express",
    "~/Library/Caches/com.edovia.screens.connect.express",
    "~/Library/HTTPStorages/com.edovia.screens.connect.express",
    "~/Library/Preferences/com.edovia.screens.connect.express.plist",
    "~/Library/Saved Application State/com.edovia.screens.connect.express.savedState",
  ]
end
