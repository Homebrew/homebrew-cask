cask "expandrive" do
  version "2025.10.31.778"
  sha256 "39e88b5a39c92ab7eb627567f11c8b0bf3a787e4c4699a3c115c88a910ebd9b8"

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
