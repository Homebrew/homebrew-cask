cask "expandrive" do
  version "7.7.9"
  sha256 "b2bfcc474626e4ea0be1ff1ab987ba0dcd9259530909ad3021f6088d6f3e5de6"

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
