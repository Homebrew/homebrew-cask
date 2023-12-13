cask "readwise-reader" do
  version :latest
  sha256 :no_check

  # version "0.1.1"
  # sha256 "a39d51e7b210b2d59fb6a0e1dd689002a9e642e8e9cecba80c9fd5d9fd057f42"

  url "https://reader-desktop-releases.readwise.io/Reader.dmg"
  name "Readwise Reader"
  desc "Save articles to read, highlight key content, and organize notes for review"
  homepage "https://readwise.io/read/"

  depends_on macos: ">= :high_sierra"

  app "Reader.app"

  zap trash: [
    "~/Library/Application Support/io.readwise.read",
    "~/Library/Caches/io.readwise.read",
    "~/Library/HTTPStorages/io.readwise.read.binarycookies",
    "~/Library/Saved Application State/io.readwise.read.savedState",
    "~/Library/WebKit/io.readwise.read",
  ]
end
