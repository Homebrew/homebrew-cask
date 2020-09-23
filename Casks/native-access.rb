cask "native-access" do
  version "1.12.2.132"
  sha256 "2154793ab479cbd08737916c5cbfe1087cda7b20e04c63a1186c4397218b5a41"

  url "https://native-instruments.com/fileadmin/downloads/Native_Access_Installer.dmg"
  appcast "https://native-instruments.com/forum/threads/official-update-status-native-access-current-version-#{version.major_minor_patch.dots_to_hyphens}.313999",
          must_contain: version.major_minor_patch
  name "Native Access"
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
