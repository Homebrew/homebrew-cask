cask "cron" do
  arch arm: "arm64", intel: "x64"

  version "1.115.0"
  sha256 arm:   "91c96dd1de41b0fb30a5aecc0e688adce1ba108dc7bab825a6f1ac62ce51ee6d",
         intel: "6d624c79c1a48743e383dbeb953c9856477b93c67bd4c77ae6949d7487e62b13"

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
  depends_on macos: ">= :high_sierra"

  app "Cron.app"

  zap trash: [
    "~/Library/Application Support/Cron",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
