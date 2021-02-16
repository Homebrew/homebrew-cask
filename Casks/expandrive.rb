cask "expandrive" do
  version "7.7.5"
  sha256 "6ab37834da6446b456f9c53dbbcfb018c6f159e5bc1310aafd1cc307b408a99d"

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
