cask "launchos" do
  version "2.3.1,458"
  sha256 "1fac2365f33b16c60cf049e2c9591e370f3aa329c4adf893598e347b0bd602d7"

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
