cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "b27c3716860e05710f14900ebf7de870ad0fb5379c9c6cd00c15d5266d20d4b8",
         intel: "0e2e89f60002a8580b254087955346f7aa60170ba53cab49b6bad5bf3faed823"

  url "https://github.com/RSSNext/Folo/releases/download/v#{version}/Folo-#{version}-macos-#{arch}.dmg",
      verified: "github.com/RSSNext/Folo/"
  name "Folo"
  desc "Information browser"
  homepage "https://follow.is/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]beta[._-]?\d+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: [
    "follow@alpha",
    "folo@nightly",
  ]
  depends_on macos: ">= :big_sur"

  app "Folo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Folo",
    "~/Library/Logs/Folo",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
