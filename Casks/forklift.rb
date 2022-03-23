cask "forklift" do
  version "3.5.5,217"
  sha256 "42168cef1e4f1f9bdc205e90b9f582f3529d0c0580008f716f3ffa1d5ed9e88f"

  url "https://download.binarynights.com/ForkLift#{version.csv.first}.zip"
  name "ForkLift"
  desc "Finder replacement and FTP, SFTP, WebDAV and Amazon s3 client"
  homepage "https://binarynights.com/"

  livecheck do
    url "https://updates.binarynights.com/ForkLift#{version.major}/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
    "~/Library/Logs/ForkLift",
    "~/Library/Logs/ForkLiftMini",
    "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
    "~/Library/Preferences/com.binarynights.ForkLiftMini.plist",
    "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
  ]
end
