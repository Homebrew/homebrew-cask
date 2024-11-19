cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2-nightly.20241118"
  sha256 arm:   "3f3ce329417bc2e491edd4e53b3ff34f272515b0c70d757e01cb676c43d567b8",
         intel: "9a9d0434d574a04f1cfb1f70bb31ea5d26f730c6da2a5f1c6f467227b9d64a04"

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
