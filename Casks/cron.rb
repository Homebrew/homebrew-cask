cask "cron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.107.0"

  if Hardware::CPU.intel?
    sha256 "3f2335578382db0b1201d1b98e07960d4667e32c9293ea795111b55cf6da6cfd"
  else
    sha256 "ac49a33af84549d1dbef88201182b94e9a5b0dc4326a1178e5fe806540598282"
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
