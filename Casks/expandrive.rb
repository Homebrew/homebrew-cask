cask "expandrive" do
  version "7,2023.3.1"
  sha256 "1e85787680330794db0846206273c67b124d9424904817de44a74d8d15f66c9f"

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
