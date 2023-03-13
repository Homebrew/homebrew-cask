cask "expandrive" do
  version "7,2023.3.2"
  sha256 "4cb09bdb4cb8bfb493384baf5023d1b369869dd8e5423645df7c5afc0fc0b66e"

  url "https://updates.expandrive.com/apps/expandrive#{version.csv.first}/v/#{version.csv.second.dots_to_hyphens}/update_download"
  name "ExpanDrive"
  desc "Network drive and browser for cloud storage"
  homepage "https://www.expandrive.com/apps/expandrive/"

  livecheck do
    url "https://updates.expandrive.com/apps/expandrive#{version.csv.first}/download_latest"
    strategy :header_match do |headers|
      matches = headers["location"].scan(/expandrive(\d+).*ExpanDrive[._-](\d+\.\d+\.\d+)\.dmg/).flatten
      "#{matches[0]},#{matches[1]}"
    end
  end

  app "ExpanDrive.app"

  zap trash: [
    "~/Library/Application Support/ExpanDrive",
    "~/Library/Preferences/com.expandrive.exfs.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive*.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive.helper.plist",
  ]
end
