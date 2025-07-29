cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "33ca67ff2e045ec5f2e65732f318eec59c1edc50c323c5f20e119a0226e5c166",
         intel: "679e6df893ca4fad85e09c610067da7e63e4557ef205b318e1ef43df2f5f72f0"

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
