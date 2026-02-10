cask "requestly" do
  arch arm: "-arm64"

  version "26.2.6"
  sha256 arm:   "72f3126123df5d6f000ccb8cd36954b89c709213f739a7d95fc44ea970fa3709",
         intel: "876129338d3adb6125507263d19e89829b9f2f66502590c467e38f4274b66b60"

  url "https://github.com/requestly/requestly-desktop-app/releases/download/v#{version}/Requestly-#{version}#{arch}.dmg",
      verified: "github.com/requestly/requestly-desktop-app/"
  name "Requestly"
  desc "Intercept and modify HTTP requests"
  homepage "https://requestly.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Requestly.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*",
    "~/Library/Application Support/Requestly",
    "~/Library/Logs/Requestly",
    "~/Library/Preferences/io.requestly.*.plist",
    "~/Library/Saved Application State/io.requestly.*.savedState",
  ]
end
