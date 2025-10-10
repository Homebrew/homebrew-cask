cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "e39702d3b326595961a9d8c87f96f8965f3f1b321b448bd2a52f4b4339014608",
         intel: "d1780cc1e25ecd0941fa3525ead96a940b6f6c8379f943b56780bfc0e9f880cd"

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
