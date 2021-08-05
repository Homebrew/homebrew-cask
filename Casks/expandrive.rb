cask "expandrive" do
  version "7,2021.8.1"
  sha256 "6381976ce6dab135c3559b242a5c702a338d9401455baf4af2016b31c4396e4c"

  url "https://updates.expandrive.com/apps/expandrive#{version.before_comma}/v/#{version.after_comma.dots_to_hyphens}/update_download"
  name "ExpanDrive"
  desc "Network drive and browser for cloud storage"
  homepage "https://www.expandrive.com/apps/expandrive/"

  livecheck do
    url "https://updates.expandrive.com/apps/expandrive#{version.before_comma}/download_latest"
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
