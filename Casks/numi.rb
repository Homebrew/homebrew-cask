cask "numi" do
  version "3.29.675"
  sha256 "76e20b0791e6c6deae4c7a2949a161d6b902b4c9745b2bca06b0368335d5f749"

  url "https://s5.numi.app/updates/#{version}/Numi.zip"
  appcast "https://github.com/nikolaeu/numi/releases.atom",
          must_contain: version.major_minor
  name "Numi"
  desc "Calculator and converter application"
  homepage "https://numi.app/"

  auto_updates true
  depends_on macos: ">= :sierra"

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
