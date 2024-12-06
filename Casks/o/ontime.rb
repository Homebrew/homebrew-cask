cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.9.3"
  sha256 arm:   "2368f87388233166a9e3ceb4119f2ba4dcf2cb6699c0fc3029397eabc7ca51ec",
         intel: "b5b194d061baada126b505cb90137d7452a173ce3f175384f2cadf9299bef2e6"

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
  depends_on macos: ">= :catalina"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
