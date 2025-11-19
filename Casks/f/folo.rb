cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "1.1.7"
  sha256 arm:   "46eb58589605102d670c0104d7d4cf1058ff1f21d611e4cdb519f59b7166407c",
         intel: "81c23e0ea363f41e9d38c3c8da21e216e7a79dccc72f6a6cd0aeef7820ca8522"

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
  conflicts_with cask: [
    "follow@alpha",
    "folo@nightly",
  ]
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
