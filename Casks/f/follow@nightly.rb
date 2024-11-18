cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1-nightly.20241117"
  sha256 arm:   "b2a310760f54536837e8987a51c772adb1f5e496d3d94a150d6d514b8c316986",
         intel: "f725cf963fe058beb39536157a04cb1021f19ec5bc305c6f080c1eaddba4fc10"

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
