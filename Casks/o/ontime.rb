cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.10.1"
  sha256 arm:   "e376fcca9be01d809e41500f3414d4ebf45e78421b33faf5c1d3b56f826e3161",
         intel: "dc5f4ccb2590ab27e33e5e273a5432f1a658b0ee8693425bdae75379a44308a4"

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
