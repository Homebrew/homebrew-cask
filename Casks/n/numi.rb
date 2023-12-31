cask "numi" do
  version "3.32.721"
  sha256 "21b5f89ecacfab039295874d24b79a450c080d526bcdf31716a46a8b11dddb30"

  url "https://s3.numi.app/updates/#{version}/Numi.dmg"
  name "Numi"
  desc "Calculator and converter application"
  homepage "https://numi.app/"

  livecheck do
    url "https://s1.numi.app/download"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Numi.app"

  uninstall launchctl: "com.dmitrynikolaev.numi#{version.major}helper",
            quit:      "com.dmitrynikolaev.numi"

  zap trash: [
    "~/Library/Application Support/Numi",
    "~/Library/Application Support/com.dmitrynikolaev.numi",
    "~/Library/Application Support/CrashReporter/Numi_*.plist",
    "~/Library/Caches/com.crashlytics.data/com.dmitrynikolaev.numi",
    "~/Library/Caches/com.dmitrynikolaev.numi",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.dmitrynikolaev.numi",
    "~/Library/Containers/com.dmitrynikolaev.numi.NumiExtension",
    "~/Library/Preferences/com.dmitrynikolaev.numi.plist",
    "/Users/Shared/Numi",
  ]
end
