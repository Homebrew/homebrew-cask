cask "launchos" do
  version "2.5.0,519"
  sha256 "fd33eb1d28d22640e047c7e336c9a3a9bc664c6e07817ac0754f30073d421926"

  url "https://static.remixdesign.app/launchos/LaunchOS-#{version.csv.first}-#{version.csv.second}.dmg"
  name "LaunchOS"
  desc "Launchpad alternative"
  homepage "https://launchosapp.com/"

  livecheck do
    url "https://static.remixdesign.app/launchos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

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
