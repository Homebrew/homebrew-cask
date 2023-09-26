cask "forklift" do
  version "4.0.2"
  sha256 "8950d4682b38e49fe987de9d6ed2cdc7046ee52b84c498896a2849aa5c32867a"

  url "https://download.binarynights.com/ForkLift/ForkLift#{version}.zip"
  name "ForkLift"
  desc "Finder replacement and FTP, SFTP, WebDAV and Amazon s3 client"
  homepage "https://binarynights.com/"

  livecheck do
    url "https://updates.binarynights.com/ForkLift/update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ForkLift.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.binarynights.ForkLiftHelper",
            launchctl: [
              "com.binarynights.ForkLiftHelper",
              "com.binarynights.ForkLiftMini",
            ],
            quit:      [
              "com.binarynights.ForkLift-#{version.major}",
              "com.binarynights.ForkLiftMini",
            ]

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
