cask "expandrive" do
  version "7,2023.4.1"
  sha256 "360ae7ed44fe1374073af3682e69fe5e83193f5546712b3ce62a0c460f41b8eb"

  url "https://updates.expandrive.com/apps/expandrive#{version.csv.first}/v/#{version.csv.second.dots_to_hyphens}/update_download"
  name "ExpanDrive"
  desc "Network drive and browser for cloud storage"
  homepage "https://www.expandrive.com/apps/expandrive/"

  livecheck do
    url "https://updates.expandrive.com/apps/expandrive#{version.csv.first}/download_latest"
    regex(%r{expandrive(\d+)/.*/ExpanDrive[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
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

  caveats do
    requires_rosetta
  end
end
