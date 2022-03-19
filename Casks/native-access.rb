cask "native-access" do
  version "1.13.3.136"
  sha256 :no_check

  url "https://native-instruments.com/fileadmin/downloads/Native_Access_Installer.dmg"
  name "Native Access"
  desc "Administration tool for Native Instruments products"
  homepage "https://native-instruments.com/specials/native-access"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Native Access.app"

  uninstall quit:      "com.native-instruments.Native Access",
            launchctl: "com.native-instruments.NativeAccess.Helper2",
            delete:    [
              "/Library/PrivilegedHelperTools/com.native-instruments.NativeAccess.Helper2",
              "/Library/Application Support/Native Instruments/Helper/NIHelperAuth",
            ],
            rmdir:     [
              "/Library/Application Support/Native Instruments/*",
              "/Library/Application Support/Native Instruments",
            ]

  zap trash: [
    "/Library/Application Support/Native Instruments/Service Center/NativeAccess.xml",
    "~/Library/Application Support/Native Instruments/Native Access*",
    "~/Library/Application Support/Native Instruments/Service Center",
    "~/Library/Application Support/CrashReporter/Native Access_*.plist",
    "~/Library/Caches/Native Instruments/Native Access*",
    "~/Library/Preferences/com.native-instruments.Native Access.plist",
    "~/Library/Preferences/com.native-instruments.Shared.plist",
    "/private/var/folders/*/*/*/com.native-instruments.Native Access",
    "/private/var/folders/*/*/*/metalink-*.meta4",
  ],
      rmdir: [
        "/Library/Application Support/Native Instruments/*",
        "/Library/Application Support/Native Instruments",
        "~/Library/Application Support/Native Instruments",
        "/private/var/log/Native Instruments",
      ]
end
