cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "3.0.26"
  sha256 arm:   "87b0a137f0c7cf4f680f09c9e5da3a8e8cdd32d05904f46fe0f81bbce4548788",
         intel: "020c90d4725d2123c9ac23092e94fd728d7118541ac85791566d1301f7cbc1a4"

  url "https://github.com/rize-io/lua/releases/download/v#{version}/Rize-#{version}-#{arch}.dmg",
      verified: "github.com/rize-io/lua/"
  name "Rize"
  desc "AI time tracker"
  homepage "https://rize.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Rize.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.rize.sfl*",
    "~/Library/Application Support/Rize",
    "~/Library/Caches/io.rize",
    "~/Library/Caches/io.rize.ShipIt",
    "~/Library/HTTPStorages/io.rize",
    "~/Library/Preferences/io.rize.plist",
    "~/Library/Saved Application State/io.rize.savedState",
  ]
end
