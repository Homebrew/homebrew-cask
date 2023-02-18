cask "mist" do
  version "0.5"
  sha256 "dd6df09d1a885036e06c86d63f087b6bf5260760c61dbd09f97b1dcba57905e8"

  url "https://github.com/ninxsoft/Mist/releases/download/v#{version}/Mist.#{version}.pkg"
  name "Mist"
  desc "Utility that automatically downloads macOS Firmwares / Installers"
  homepage "https://github.com/ninxsoft/Mist"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "Mist.#{version}.pkg"

  uninstall quit:      ["com.ninxsoft.mist.helper", "com.ninxsoft.mist"],
            launchctl: "com.ninxsoft.mist.helper",
            pkgutil:   "com.ninxsoft.pkg.mist"

  zap trash: [
    "/Users/Shared/Mist", # Mist.app creates this directory for cache files
    "~/Library/Caches/com.ninxsoft.mist",
    "~/Library/Preferences/com.ninxsoft.mist.plist",
    "~/Library/Saved Application State/com.ninxsoft.mist.savedState",
    "/Library/LaunchDaemons/com.ninxsoft.mist.helper.plist",
    "/Library/PrivilegedHelperTools/com.ninxsoft.mist.helper",
  ]
end
