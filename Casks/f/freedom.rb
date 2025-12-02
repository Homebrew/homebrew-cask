cask "freedom" do
  version "2.24.2"
  sha256 "3d4b03e9863e1661d933d4e755e5979c0655855c9e7f24dcb4074f1ae969e620"

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Freedom.app"

  uninstall launchctl: "com.80pct.FreedomHelper",
            quit:      "com.80pct.FreedomPlatform",
            delete:    [
              "/Library/PrivilegedHelperTools/com.80pct.FreedomHelper",
              "/var/log/FreedomHelper.log",
            ]

  zap trash: [
    "~/Library/Application Support/com.80pct.FreedomPlatform",
    "~/Library/Caches/com.80pct.FreedomPlatform",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.80pct.FreedomPlatform",
    "~/Library/HTTPStorages/com.80pct.FreedomPlatform",
    "~/Library/Preferences/com.80pct.FreedomPlatform.plist",
  ]
end
