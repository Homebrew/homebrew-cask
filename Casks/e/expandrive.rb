cask "expandrive" do
  version "2026.02.09.821"
  sha256 "62892ba317fe186befed61204894fb2316a4691f7a0b72405c0372c661ac90c9"

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
