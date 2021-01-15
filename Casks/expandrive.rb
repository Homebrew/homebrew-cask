cask "expandrive" do
  version "7.7.0"
  sha256 "8b1824b692a6c854b8880c7d91284a41e8e0e43d83f9f59ea953ca665179f64e"

  url "https://updates.expandrive.com/apps/expandrive#{version.major}/v/#{version.dots_to_hyphens}/update_download"
  appcast "https://updates.expandrive.com/appcast/expandrive#{version.major}.json?version=#{version.major}.0.0"
  name "ExpanDrive"
  desc "Network drive and browser for cloud storage"
  homepage "https://www.expandrive.com/apps/expandrive/"

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
