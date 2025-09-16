cask "reader" do
  version "0.1.1959"
  sha256 "f34dc2c945918616f6b89395c8367fec05cc16d956d44869ed358b958c45cbbc"

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

  app "Reader.app"

  zap trash: [
    "~/Library/Application Support/io.readwise.read",
    "~/Library/Caches/io.readwise.read",
    "~/Library/HTTPStorages/io.readwise.read.binarycookies",
    "~/Library/Saved Application State/io.readwise.read.savedState",
    "~/Library/WebKit/io.readwise.read",
  ]
end
