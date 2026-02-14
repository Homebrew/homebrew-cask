cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.4.1"
  sha256 arm:   "abfddf5a1330cf41bd66c50666e0db23a40051f66d69eee9f79bd6ce3150b578",
         intel: "ce9400409503a10906cbbb731ee6c3c6250e4393db64706c3bca30da6f7f36dc"

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
