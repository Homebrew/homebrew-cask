cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.14.0"
  sha256 arm:   "64db7855355bb4f84370acabeb1b0bb48f26a7d1de39de201978fcbb47f68755",
         intel: "fb11e44fa46f586337865c06b781db28622077bbf0df88d488c13734dfcf66d4"

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
