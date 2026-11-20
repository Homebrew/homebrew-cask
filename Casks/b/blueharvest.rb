cask "blueharvest" do
  version "8.5.1,851"
  sha256 "e7988178a867487d1c5b6aeac6a939efbc207321549cd6d6e70f26c7e5993e6d"

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
  depends_on :macos

  app "BlueHarvest.app"

  uninstall launchctl: "com.zeroonetwenty.BlueHarvestHelper#{version.csv.first.major}",
            quit:      "com.zeroonetwenty.BlueHarvest5",
            delete:    "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.csv.first.major}"

  zap trash: [
    "~/Library/Caches/com.zeroonetwenty.BlueHarvest*",
    "~/Library/Preferences/com.zeroonetwenty.BlueHarvest*.plist",
  ]
end
