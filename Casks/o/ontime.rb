cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.15.1"
  sha256 arm:   "accd23be1442728fe45ede9cdfc6e3234c6c9c6d7d6803c5a2bea0edfd5c0320",
         intel: "38d003ea055b9f0dbf797ae8712d330c80820ea2d82d82cd2c0fed63b650d1bf"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/no.lightdev.ontime.sfl*",
    "~/Library/Application Support/ontime",
    "~/Library/Application Support/ontime-electron",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
