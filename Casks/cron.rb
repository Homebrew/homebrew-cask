cask "cron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.109.0"

  if Hardware::CPU.intel?
    sha256 "24ec3d5a709313979ab8cd658e03cfee4ce4dec6201943c2fd8d467376328c43"
  else
    sha256 "d01ada02ea7232147ca2f053a7e000bf00e3bd4ab91800e3e58f438460b7180b"
  end

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
