cask "freedom" do
  version "2.16.2"
  sha256 "dbe1beda351d1dd77989bf87ef652672326c8868e0a7f901fb0c26a99c648eaf"

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
