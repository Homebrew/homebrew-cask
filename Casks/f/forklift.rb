cask "forklift" do
  version "4.2"
  sha256 "eda8fef3113276a147d6d7213678aa6c3ce1e410718d3289e3cd7a0f7d0a3219"

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
