cask "expandrive" do
  version "7,2025-2-28,2025-02-28_at_18_09_55"
  sha256 "e01325e9c14386473931b4d7b3400451acc08bb9ff25f7999bb01912d692fd7d"

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
