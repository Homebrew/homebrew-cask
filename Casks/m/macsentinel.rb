cask "macsentinel" do
  version "1.0.12"
  sha256 "0e426cc612dcf8d83509666aa2a76c367d407f1adaec424d68dea799502830ac"

  url "https://download.sentinel.digital/MacSentinel-#{version}.dmg"
  name "MacSentinel"
  desc "System cleaner, optimizer, and performance monitor"
  homepage "https://sentinel.digital/"

  livecheck do
    url "https://download.sentinel.digital/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacSentinel.app"

  uninstall quit: "com.appsinfoway.MacScope"

  zap trash: [
    "~/Library/Application Support/com.appsinfoway.MacScope",
    "~/Library/Application Support/MacSentinel",
    "~/Library/Caches/com.appsinfoway.MacScope",
    "~/Library/Caches/digital.sentinel.MacSentinel",
    "~/Library/HTTPStorages/com.appsinfoway.MacScope",
    "~/Library/Preferences/com.appsinfoway.MacScope.plist",
    "~/Library/Preferences/digital.sentinel.MacSentinel.plist",
    "~/Library/Saved Application State/com.appsinfoway.MacScope.savedState",
  ]
end
