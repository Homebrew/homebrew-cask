cask "follow@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2-nightly.20250117"
  sha256 arm:   "246f794bb9521f2dc6f9bda53ffc7061b5e1054538af48f142b59d2e5b3a2bcc",
         intel: "0ac0889217c5a4bbc50c4d122a0a4468fb765ff98da5691bcc7f4472b8fd1886"

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
