cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.3.3-nightly.20250129"
  sha256 arm:   "fb5260051138c3c7c988790f05fc3256acbe52eabd822f2c4121ee53f98c7b6d",
         intel: "a18e8b72342699040f7846639b059d202c79272317faeea54c5b10987b8f9439"

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
