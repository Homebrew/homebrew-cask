cask "folo@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.3.13"
  sha256 arm:   "926c446c7a4645515336551ebe61184e6462b27cdb36b39f4fd0b999e667e97b",
         intel: "202d96a30ad0916440555219b8374bf1bdc198c75d286686fd312391176f77c1"

  url "https://github.com/RSSNext/Folo/releases/download/v#{version}/Folo-#{version}-macos-#{arch}.dmg",
      verified: "github.com/RSSNext/Folo/"
  name "Folo Nightly"
  desc "Information browser"
  homepage "https://follow.is/"

  livecheck do
    url :url
    regex(/^(?:nightly[._-])?v?(\d+(?:\.\d+)+(?:[._-]nightly[._-]?\d+)?)$/i)
  end

  conflicts_with cask: [
    "follow@alpha",
    "folo",
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
