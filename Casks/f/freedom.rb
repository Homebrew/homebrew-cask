cask "freedom" do
  version "2.21.0"
  sha256 "1d2cf4e6b88aa587ac47fe25ae0fc8eb6dac37d80070142306fa8935795984ad"

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
