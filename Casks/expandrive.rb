cask "expandrive" do
  version "2021.6.1"
  sha256 "a485d75056da29ee8b09c81a3d2732b4fb38dc6e4abf5a178f7c76c60e0d45c2"

  url "https://updates.expandrive.com/apps/expandrive#{version.major}/v/#{version.dots_to_hyphens}/update_download"
  name "ExpanDrive"
  desc "Network drive and browser for cloud storage"
  homepage "https://www.expandrive.com/apps/expandrive/"

  livecheck do
    url "https://updates.expandrive.com/appcast/expandrive#{version.major}.json"
    strategy :page_match
    regex(/mac\sversion\s(\d+(?:\.\d+)*)/i)
  end

  app "ExpanDrive.app"

  zap trash: [
    "~/Library/Application Support/ExpanDrive",
    "~/Library/Preferences/com.expandrive.exfs.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive2.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive3.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive.helper.plist",
  ]
end
