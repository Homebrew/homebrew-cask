cask "reader" do
  version "0.1.2909"
  sha256 "683e7e4635b1fc77e597c75ba599dd2a77963f466521e571c1af0215637ee614"

  url "https://github.com/readwiseio/reader-desktop-releases/releases/download/reader-desktop-v#{version}/Reader_#{version}_universal.dmg",
      verified: "github.com/readwiseio/reader-desktop-releases/"
  name "Readwise Reader"
  desc "Save articles to read, highlight key content, and organise notes for review"
  homepage "https://readwise.io/read/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Reader.app"

  zap trash: [
    "~/Library/Application Support/io.readwise.read",
    "~/Library/Caches/io.readwise.read",
    "~/Library/HTTPStorages/io.readwise.read.binarycookies",
    "~/Library/Saved Application State/io.readwise.read.savedState",
    "~/Library/WebKit/io.readwise.read",
  ]
end
