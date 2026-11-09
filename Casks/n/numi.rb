cask "numi" do
  version "3.35.743"
  sha256 "f6fb2d60ae58cfce066ec409c24d69a4fe13dca1faa61ed0e147e0631f74c264"

  url "https://cdn.numi.app/updates/#{version}/Numi.dmg"
  name "Numi"
  desc "Calculator and converter application"
  homepage "https://numi.app/"

  livecheck do
    url "https://cdn.numi.app/appcast/updates-prod.xml"
    strategy :sparkle do |item|
      "#{item.short_version}.#{item.version}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Numi.app"

  uninstall launchctl: "com.dmitrynikolaev.numi#{version.major}helper",
            quit:      "com.dmitrynikolaev.numi"

  zap trash: [
    "/Users/Shared/Numi",
    "~/Library/Application Support/com.dmitrynikolaev.numi",
    "~/Library/Application Support/CrashReporter/Numi_*.plist",
    "~/Library/Application Support/Numi",
    "~/Library/Caches/com.crashlytics.data/com.dmitrynikolaev.numi",
    "~/Library/Caches/com.dmitrynikolaev.numi",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.dmitrynikolaev.numi",
    "~/Library/Containers/com.dmitrynikolaev.numi.NumiExtension",
    "~/Library/Preferences/com.dmitrynikolaev.numi.plist",
  ]
end
