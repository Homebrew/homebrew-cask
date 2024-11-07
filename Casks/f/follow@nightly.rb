cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2-nightly.20241106"
  sha256 arm:   "a46482c052cc7fd468809108746768b06e248d25527021fcb7b47dc907f623e3",
         intel: "f7e9d34ea7dd2b4e633000cf0cd571e6b72a7fa73cc1ce25097c591b06daed03"

  url "https://github.com/RSSNext/Follow/releases/download/nightly-#{version}/Follow-#{version}-macos-#{arch}.dmg",
      verified: "github.com/RSSNext/Follow/"
  name "Follow Nightly"
  desc "Information browser"
  homepage "https://follow.is/"

  livecheck do
    url :url
    regex(/^nightly[._-]v?(\d+(?:\.\d+)+(?:[._-]nightly[._-]?\d+)?)$/i)
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
