cask "cron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.108.0"

  if Hardware::CPU.intel?
    sha256 "08475e7b860162599d280917e7ba8971e05e51f197652cb1e077b72775e746d6"
  else
    sha256 "ab6aee49fe4f0a3cba80ce84ea4e3dbafa020bddc499e81521bd9e7b2b84fb27"
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

  app "Cron.app"

  zap trash: [
    "~/Library/Application Support/Cron",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
