cask "forklift" do
  version "3.4.1"
  sha256 "47bfcb6667dedea71f55793dfb98c5b61cad8104172182ef5259a4e08cc0b68e"

  url "https://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml"
  name "ForkLift"
  homepage "https://binarynights.com/"

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
