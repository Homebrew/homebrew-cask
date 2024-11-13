cask "blueharvest" do
  version "8.3,830"
  sha256 "170bd1af5f9e8fe89e81fdf86e22c17854a355296d3bee018967ae896112fd92"

  url "https://zeroonetwenty.com/blueharvest/downloads/BlueHarvest#{version.csv.second}.dmg"
  name "BlueHarvest"
  desc "Remove metadata files from external drives"
  homepage "https://zeroonetwenty.com/blueharvest/"

  livecheck do
    url "https://www.zeroonetwenty.com/blueharvest/downloads/blueharvest6.xml"
    regex(/BlueHarvest[._-]?v?(\d+(?:\.\d+)*)\.dmg/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "BlueHarvest.app"

  uninstall launchctl: "com.zeroonetwenty.BlueHarvestHelper#{version.csv.first.major}",
            quit:      "com.zeroonetwenty.BlueHarvest5",
            delete:    "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.csv.first.major}"

  zap trash: [
    "~/Library/Caches/com.zeroonetwenty.BlueHarvest*",
    "~/Library/Preferences/com.zeroonetwenty.BlueHarvest*.plist",
  ]
end
