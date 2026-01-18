cask "eigent" do
  arch arm: "-arm64"

  version "0.0.80"
  sha256 arm:   "9c20f420a221d0c1c8e6fd4699c867e405da7533500899043be8fdb3bd7b800c",
         intel: "fd37ec2f77a785117af6a34e685be13fd0b5f3b7a10c36ead8e5d7df92d5a43a"

  url "https://github.com/eigent-ai/eigent/releases/download/v#{version}/Eigent-#{version}#{arch}.dmg",
      verified: "github.com/eigent-ai/eigent/"
  name "Eigent"
  desc "Desktop AI agent"
  homepage "https://www.eigent.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Eigent.app"

  zap trash: [
    "~/.eigent",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eigent.app.sfl*",
    "~/Library/Application Support/eigent",
    "~/Library/Logs/eigent",
    "~/Library/Preferences/com.eigent.app.plist",
  ]
end
