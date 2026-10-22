cask "launchos" do
  version "2.4.1,505"
  sha256 "0d65fb1540b155913a55c409d9f6195ea3070a8b7be6e681cf2d78e5ee7961bb"

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
