cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.15.0"
  sha256 arm:   "446592ccbbfa89530327d5bf45538ac9fe2bc121b3b511aa0e046db3500690e5",
         intel: "12492d74e90b911bcf5eca1affc2e350e830dadefd889ab0e22ea97e3e2d8d63"

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
