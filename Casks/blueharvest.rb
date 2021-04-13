cask "blueharvest" do
  version "8.0.8"
  sha256 "fbd420271c333bb6899b51ddc45af0a360c16c003f095524e536a7f36d0d5707"

  url "https://zeroonetwenty.com/blueharvest/downloads/BlueHarvest#{version.no_dots}.dmg"
  name "BlueHarvest"
  desc "Remove metadata files from external drives"
  homepage "https://zeroonetwenty.com/blueharvest/"

  livecheck do
    url "https://zeroonetwenty.com/blueharvest/release-notes.html"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/BlueHarvest(\d+)(\d+)(\d+)\.dmg}i).map do |match|
        "#{match[0]}.#{match[1]}.#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "BlueHarvest.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            launchctl: "com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            quit:      "com.zeroonetwenty.BlueHarvest5"

  zap trash: [
    "~/Library/Caches/com.zeroonetwenty.BlueHarvest5",
    "~/Library/Preferences/com.zeroonetwenty.BlueHarvest5.plist",
  ]
end
