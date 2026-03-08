cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.5.0"
  sha256 arm:   "263db3f140fd262aa5bc27eccc08c0fe6fc3a956010c027a7d97d456ba2dd3dd",
         intel: "98c56afd3a431ac035c9e8cd1869fa6c0b54230929a3ae5abb03148d0751001d"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
