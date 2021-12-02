cask "cron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.106.0"

  if Hardware::CPU.intel?
    sha256 "ea5928b4ae014e5549cc51d1684c43d6b46715a8f8805b6b7123632480516fe7"
  else
    sha256 "e4162fb1b161b954f59355d245e036d51b9704667fbb4a3f5ac35b076676970f"
  end

  url "https://download.todesktop.com/210303leazlircz/Cron%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210303leazlircz/"
  name "cron"
  desc "Calendar for professionals and teams"
  homepage "https://cron.com/"

  livecheck do
    url "https://download.todesktop.com/210303leazlircz/latest-mac.yml"
    strategy :electron_builder
  end

  app "Cron.app"

  zap trash: [
    "~/Library/Application Support/Cron",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
