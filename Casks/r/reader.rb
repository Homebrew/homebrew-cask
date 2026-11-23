cask "reader" do
  version "0.1.3567"
  sha256 "0399e5e23067340e5ce77731c7f4ef6913c1678bc8250353b3018db5098f753f"

  url "https://github.com/readwiseio/reader-desktop-releases/releases/download/reader-desktop-v#{version}/Reader_#{version}_universal.dmg"
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
