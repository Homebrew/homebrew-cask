cask "navicat-data-modeler" do
  version "4.3.9,040"
  sha256 :no_check

  url "https://download3.navicat.com/updater/navicatdatamodeler#{version.csv.second}_mac_en.zip"
  name "Navicat Data Modeler"
  desc "Database design tool"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  livecheck do
    url "https://updater.navicat.com/mac/v17/navicat_updates.php?appName=Navicat%20Data%20Modeler"
    regex(%r{/navicatdatamodeler[._-]?v?(\d+(?:\.\d+)*)}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if !item.short_version || !match

      "#{item.short_version},#{match[1]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "Navicat Data Modeler.app"

  zap trash: [
    "~/Library/Group Containers/*.com.preact.Navicat.launcherGroup",
    "~/Library/HTTPStorages/com.navicat.NavicatDataModeler",
    "~/Library/Preferences/com.navicat.NavicatDataModeler.plist",
  ]
end
