cask "requestly" do
  arch arm: "-arm64"

  version "26.2.20"
  sha256 arm:   "f3b04ee6b261593ede1d25093c138d4165f8b336b4f8f60a427d6121d74a48ab",
         intel: "c21e0a302286a76174d42e8e66b84a7b43334c68a8da25d303ad73cc2a0f99fe"

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
