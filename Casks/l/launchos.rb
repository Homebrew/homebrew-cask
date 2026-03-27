cask "launchos" do
  version "1.5.5,193"
  sha256 "fcc98be090d0c4e6c6f23362a5831eaf8efb037a25f70da25fe8af22647e89cf"

  url "https://static.remixdesign.app/launchos/LaunchOS-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "static.remixdesign.app/launchos/"
  name "LaunchOS"
  desc "Launchpad alternative"
  homepage "https://launchosapp.com/"

  livecheck do
    url "https://static.remixdesign.app/launchos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "LaunchOS.app"

  zap trash: [
    "~/Library/Application Support/app.remixdesign.LaunchOS",
    "~/Library/Application Support/CrashReporter/LaunchOS_*.plist",
    "~/Library/Application Support/LaunchOS",
    "~/Library/Caches/app.remixdesign.LaunchOS",
    "~/Library/HTTPStorages/app.remixdesign.LaunchOS",
    "~/Library/Preferences/app.remixdesign.LaunchOS.plist",
  ]
end
