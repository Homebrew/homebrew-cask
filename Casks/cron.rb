cask "cron" do
  arch arm: "arm64", intel: "x64"

  version "1.111.0"
  sha256 arm:   "38b83bdb1c9c18cc1b50fe83d7ee5843aed18a58317c150790419d5ddeb50c83",
         intel: "cbaeec289b359d164483421ae20ac8e1bf1e9462d496efbd7ca0b44f64075d4c"

  url "https://download.todesktop.com/210303leazlircz/Cron%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210303leazlircz/"
  name "Cron Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://cron.com/"

  livecheck do
    url "https://download.todesktop.com/210303leazlircz/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Cron.app"

  zap trash: [
    "~/Library/Application Support/Cron",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
