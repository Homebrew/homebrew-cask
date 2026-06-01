cask "launchos" do
  version "2.0.1,269"
  sha256 "f8196f58db85bd3b0095a6ddc3ae3e5d7f136d0fa8622eb5dd5d76da34fd5b09"

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
