cask "forklift" do
  version "4.1.8"
  sha256 "b5c02385b912a2660751a57a238aeaff7466788081ff17de4ac8dddc2b07312b"

  url "https://download.binarynights.com/ForkLift/ForkLift#{version}.zip"
  name "ForkLift"
  desc "Finder replacement and FTP, SFTP, WebDAV and Amazon s3 client"
  homepage "https://binarynights.com/"

  livecheck do
    url "https://updates.binarynights.com/ForkLift/update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ForkLift.app"

  uninstall launchctl: [
              "com.binarynights.ForkLiftHelper",
              "com.binarynights.ForkLiftMini",
            ],
            quit:      [
              "com.binarynights.ForkLift-#{version.major}",
              "com.binarynights.ForkLiftMini",
            ],
            delete:    "/Library/PrivilegedHelperTools/com.binarynights.ForkLiftHelper"

  zap trash: [
    "~/Library/Application Support/ForkLift",
    "~/Library/Caches/com.binarynights.ForkLift-#{version.major}",
    "~/Library/Cookies/com.binarynights.ForkLift-#{version.major}.binarycookies",
    "~/Library/HTTPStorages/com.binarynights.ForkLift-#{version.major}",
    "~/Library/Logs/ForkLift",
    "~/Library/Logs/ForkLiftMini",
    "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
    "~/Library/Preferences/com.binarynights.ForkLiftMini.plist",
    "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
  ]
end
