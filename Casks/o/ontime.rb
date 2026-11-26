cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.16.0"
  sha256 arm:   "fff5509f472f88fe50efe5907eb7915795b39097b16b86bbc560a59e6c502360",
         intel: "685927d64363d4b1f9a7417b0e5195a8ac5493dc8a7612e4b461efecb3e727f4"

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
