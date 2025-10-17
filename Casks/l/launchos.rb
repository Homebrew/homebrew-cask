cask "launchos" do
  version "0.9.3,38"
  sha256 "bfc1b90135b94ba8fda8a6b26c5622dc43c7bccd8427032ae6cd323e21adb5e7"

  url "https://static.remixdesign.app/launchos/LaunchOS-Beta-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "static.remixdesign.app/launchos/"
  name "LaunchOS"
  desc "Launchpad alternative"
  homepage "https://launchosapp.com/"

  livecheck do
    url :homepage
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
