cask "requestly" do
  arch arm: "-arm64"

  version "26.6.22"
  sha256 arm:   "07f6db3612f8bd321243b4a91fb60cb1759c90b0ec047f050e31026e10ec35d9",
         intel: "52c95bf0b6cb521cbe35300d3354c2d65a3b56a23e723b0153d6c3f09b4f5f69"

  url "https://github.com/requestly/requestly-desktop-app/releases/download/v#{version}/Requestly-#{version}#{arch}.dmg",
      verified: "github.com/requestly/requestly-desktop-app/"
  name "Requestly"
  desc "Intercept and modify HTTP requests"
  homepage "https://requestly.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Requestly.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*",
    "~/Library/Application Support/Requestly",
    "~/Library/Logs/Requestly",
    "~/Library/Preferences/io.requestly.*.plist",
    "~/Library/Saved Application State/io.requestly.*.savedState",
  ]
end
