cask "native-access" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "arm64/"

  version "3.18.1"
  sha256 :no_check

  url "https://na-update.native-instruments.com/#{folder}Native-Access-#{arch}-mac.zip"
  name "Native Access"
  desc "Administration tool for Native Instruments products"
  homepage "https://www.native-instruments.com/en/specials/native-access-2/"

  livecheck do
    url "https://na-update.native-instruments.com/#{folder}latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Native Access.app"

  uninstall launchctl: "com.native-instruments.NativeAccess.Helper2",
            quit:      "com.native-instruments.Native Access",
            delete:    [
              "/Library/Application Support/Native Instruments",
              "/Library/Preferences/com.native-instruments.NTKDaemon.plist",
              "/Library/PrivilegedHelperTools/com.native-instruments.NativeAccess.Helper2",
            ]

  zap trash: [
    "~/Library/Application Support/CrashReporter/Native Access_*.plist",
    "~/Library/Application Support/Native Access",
    "~/Library/Application Support/Native Instruments",
    "~/Library/Caches/Native Instruments/Native Access*",
    "~/Library/Preferences/com.native-instruments.*.plist",
    "~/Library/Saved Application State/com.native-instruments.nativeaccess2.savedState",
  ]
end
