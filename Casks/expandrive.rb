cask "expandrive" do
  version "7,2022.7.1"
  sha256 "9335d249e785fa6222b703a3ce29e594a27c90f0a4fef62cf188b7105ea11afb"

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
