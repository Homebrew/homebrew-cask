cask "reader" do
  version "0.1.3084"
  sha256 "9c1d3192c4efd03b9b192a4a75b02bdfc7546797376c1797d3336fd5e3a9986b"

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

  uninstall quit: "io.readwise.read"

  zap trash: [
    "~/Library/Application Support/io.readwise.read",
    "~/Library/Caches/io.readwise.read",
    "~/Library/HTTPStorages/io.readwise.read.binarycookies",
    "~/Library/Saved Application State/io.readwise.read.savedState",
    "~/Library/WebKit/io.readwise.read",
  ]
end
