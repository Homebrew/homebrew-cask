cask "expandrive" do
  version "2025.11.10.800"
  sha256 "8a8c1a66972176f172627b976100bb3ff6a10ebc6b8e38d84e0548dcb4970852"

  url "https://corp.hosted-by-files.com/builds/ExpanDrive/#{version}/mac/ExpanDrive_#{version.major_minor_patch}.dmg",
      verified: "corp.hosted-by-files.com/builds/ExpanDrive/"
  name "ExpanDrive"
  desc "Network drive and browser for cloud storage"
  homepage "https://www.expandrive.com/apps/expandrive/"

  livecheck do
    url "https://www.expandrive.com/api/download/expandrive?platform=macos"
    regex(%r{/ExpanDrive/v?(\d+(?:\.\d+)+)/}i)
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "ExpanDrive.app"

  zap trash: [
    "~/Library/Application Support/ExpanDrive",
    "~/Library/Preferences/com.expandrive.exfs.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive*.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive.helper.plist",
  ]
end
