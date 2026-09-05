cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.13.0"
  sha256 arm:   "7cd8a4a296b122064a717681787c995e56f1845690f58eaa1b31a6d0d2f5cdb7",
         intel: "a8d6baee015eaaa7251d9923e21032f1f3b600b73ae40c996bf6d6145d3bd60e"

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
