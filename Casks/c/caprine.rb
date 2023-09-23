cask "caprine" do
  arch arm: "-arm64", intel: ""

  version "2.58.1"
  sha256 arm:   "945a69300fb6c3fd09474fe38c80a427ea6a7d96bb590a37cf3791bbd8232550",
         intel: "6afa13a8333673b52870a9a9a58a8c5e6788873f232b770b5630c86340604bb6"

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}#{arch}.dmg"
  name "Caprine"
  desc "Elegant Facebook Messenger desktop app"
  homepage "https://github.com/sindresorhus/caprine"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Caprine.app"

  zap trash: [
    "~/Library/Application Support/Caprine",
    "~/Library/Caches/com.sindresorhus.caprine",
    "~/Library/Caches/com.sindresorhus.caprine.ShipIt",
    "~/Library/Logs/Caprine",
    "~/Library/Preferences/com.sindresorhus.caprine.helper.plist",
    "~/Library/Preferences/com.sindresorhus.caprine.plist",
    "~/Library/Saved Application State/com.sindresorhus.caprine.savedState",
  ]
end
