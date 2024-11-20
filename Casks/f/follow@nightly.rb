cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2-nightly.20241119"
  sha256 arm:   "fac1226869776a5dab0cebead50555f11fb0d561d03db84e44da739421015ae1",
         intel: "0b9e9fb725950d89859325ee3e04fd8dc39baa73cc6b9b04f3152a598b85adb6"

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
