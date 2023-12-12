cask "native-access" do
  arch arm: "M1", intel: "Intel"

  version "3.8.0"
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
              "/Library/Application Support/Native Instruments",
              "/Library/Preferences/com.native-instruments.NTKDaemon.plist",
              "/Library/PrivilegedHelperTools/com.native-instruments.NativeAccess.Helper2",
            ]

  zap trash: [
    "~/Library/Application Support/CrashReporter/Native Access_*.plist",
    "~/Library/Application Support/Native Instruments",
    "~/Library/Application Support/Native Access",
    "~/Library/Caches/Native Instruments/Native Access*",
    "~/Library/Preferences/com.native-instruments.*.plist",
    "~/Library/Saved Application State/com.native-instruments.nativeaccess2.savedState",
  ]
end
