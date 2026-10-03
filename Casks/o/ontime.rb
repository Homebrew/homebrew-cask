cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.14.1"
  sha256 arm:   "040650b0372a2a306aeea0f1d0805afda67bf56a1089a3ee8e61e567d0431d01",
         intel: "90c8553fc9feddeed4ebe341b314ca665618717367a037a155b64a6d29f4f8c1"

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

  uninstall quit: "no.lightdev.ontime"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Application Support/ontime-electron",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
