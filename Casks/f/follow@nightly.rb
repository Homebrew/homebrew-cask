cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.3.8"
  sha256 arm:   "779453a4546674d348854ad25abc63cff7732c9212285565da037cd1ba3dc450",
         intel: "b594a4aab42817f8a1597fc7843082ff8ad042ef7ca297fe465534632b9f380b"

  url "https://github.com/RSSNext/Follow/releases/download/v#{version}/Follow-#{version}-macos-#{arch}.dmg",
      verified: "github.com/RSSNext/Follow/"
  name "Follow Nightly"
  desc "Information browser"
  homepage "https://follow.is/"

  livecheck do
    url :url
    regex(/^(?:nightly[._-])?v?(\d+(?:\.\d+)+(?:[._-]nightly[._-]?\d+)?)$/i)
  end

  conflicts_with cask: [
    "follow",
    "follow@alpha",
  ]
  depends_on macos: ">= :big_sur"

  app "Follow.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Follow",
    "~/Library/Logs/Follow",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
