cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0-nightly.20250106"
  sha256 arm:   "f322eb88e3978987d4ec86afc4c8165680d8806bdebce9a9bcaac6ef51c8d5a3",
         intel: "4897dfdef241da4fd090845e4747c14142870dd773fcc86c1ff7f9649c12a336"

  url "https://github.com/RSSNext/Follow/releases/download/#{version}/Follow-#{version}-macos-#{arch}.dmg",
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
