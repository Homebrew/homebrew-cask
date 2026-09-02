cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.12.0"
  sha256 arm:   "d639e76efb67cc090ce7e129ffc6d31f05173c6b7b9d2c62805cb642269ee54a",
         intel: "2719a7108cd212d15b9aa11ea2cc956969c7d43e430926f9cdba5fbe0be715da"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
