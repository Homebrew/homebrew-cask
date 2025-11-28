cask "requestly" do
  arch arm: "-arm64"

  version "25.11.28"
  sha256 arm:   "855de69d2603b448e02f9c534861503666cae06c1e9dcdc4c243d7d439434497",
         intel: "c8871481d71839be8493c9d440417a157f1c34c58b2c637d2be49bccc8476050"

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
