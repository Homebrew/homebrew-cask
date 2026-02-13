cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "b6f5194c4fd472eae3009a728f16b0ecd8600f708a5dba3c38c9e152c33ce1b0",
         intel: "bdce0a48d0e7abfc3ec459d66ed8ea03d5d99d8db0d86dbebfe97892387bfc2f"

  url "https://github.com/RSSNext/Folo/releases/download/desktop%2Fv#{version}/Folo-#{version}-macos-#{arch}.dmg",
      verified: "github.com/RSSNext/Folo/"
  name "Folo"
  desc "Information browser"
  homepage "https://follow.is/"

  livecheck do
    url :url
    regex(%r{^(?:desktop[/@])?v?(\d+(?:\.\d+)+(?:[._-]beta[._-]?\d+)?)$}i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "folo@nightly"
  depends_on macos: ">= :monterey"

  app "Folo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Folo",
    "~/Library/Logs/Folo",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
