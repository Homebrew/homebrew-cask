cask "expandrive" do
  version "7,2025-05-27,2025-05-27_at_14_49_21"
  sha256 "2912ea060dc278b76c7d1bf74b27fb20a376691db7b02ddc6c1d2d84ff2ec49e"

  url "https://s3.amazonaws.com/expandrive/expandrive#{version.csv.first}/v#{version.csv.second}_published_#{version.csv.third}/ExpanDrive.dmg",
      verified: "s3.amazonaws.com/expandrive/"
  name "ExpanDrive"
  desc "Network drive and browser for cloud storage"
  homepage "https://www.expandrive.com/apps/expandrive/"

  livecheck do
    url "https://updates.expandrive.com/apps/expandrive#{version.csv.first}/download_latest"
    regex(%r{expandrive(\d+)/v?(\d+(?:[.-]\d+)+)[._-]published[._-]([^/]+)/ExpanDrive\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "ExpanDrive.app"

  zap trash: [
    "~/Library/Application Support/ExpanDrive",
    "~/Library/Preferences/com.expandrive.exfs.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive*.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive.helper.plist",
  ]
end
