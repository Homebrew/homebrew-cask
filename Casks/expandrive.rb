cask "expandrive" do
  version "7.6.0"
  sha256 "907b41135b084ab4a4ad1ef5fb87b72cdee10a41ef6479ef5e4e9521d5029ac8"

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
