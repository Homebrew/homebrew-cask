cask "native-access" do
  arch arm: "M1", intel: "Intel"

  version "3.2.0"
  sha256 :no_check

  url "https://native-instruments.com/fileadmin/downloads/Native-Access_2_Mac_#{arch}.dmg"
  name "Native Access"
  desc "Administration tool for Native Instruments products"
  homepage "https://native-instruments.com/specials/native-access-2"

  livecheck do
    url "https://community.native-instruments.com/discussion/4823/official-update-status-native-access-current-version-2-0-8"
    regex(/current\s*version:\s*v?(\d+(?:\.\d+)+)\)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
