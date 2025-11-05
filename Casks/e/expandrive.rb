cask "expandrive" do
  version "2025.11.05.786"
  sha256 "6c21db52d32334a2bc1d88ef1ef38b4e2e06358b9e54bdf0f7c51a3c13587d2e"

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
