cask "expandrive" do
  version "2026.01.22.812"
  sha256 "e5a4f6c834a671cb8ea4c2d4622fe9f851b6c849d7c5b8f74a6b8eee35fe013a"

  url "https://files-com-public-builds.s3.us-east-1.amazonaws.com/builds/ExpanDrive/#{version}/mac/ExpanDrive_#{version.major_minor_patch}.dmg",
      verified: "files-com-public-builds.s3.us-east-1.amazonaws.com/builds/ExpanDrive/"
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
