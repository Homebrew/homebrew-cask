cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0-nightly.20250105"
  sha256 arm:   "a6abbc0e040404299ab311c0fa16ff3f93f3e270785e86a208f422ebb8497c68",
         intel: "d78a14bb55e43bd4226a2e83ae103c03f23d75982f9bdc713b072b83f77eb3ad"

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
