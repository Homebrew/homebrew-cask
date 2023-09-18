cask "freedom" do
  version "2.19.1"
  sha256 "7bb2d386c6a8de10f7db01f66703994bbb6c769854f93076319a8957baf23bfa"

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Freedom.app"

  uninstall quit:      "com.80pct.FreedomPlatform",
            launchctl: "com.80pct.FreedomHelper",
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
