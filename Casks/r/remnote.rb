cask "remnote" do
  arch arm: "-arm64"

  version "1.22.67"
  sha256 arm:   "ff64090c812d45ecc94073d26cc060f9575180cc77c3e501f31748a980d3a70b",
         intel: "8e54cbdda291f845b9707e237c4d0417c3390a304712421bbc3dbce9c5807320"

  url "https://download2.remnote.io/remnote-desktop2/RemNote-#{version}#{arch}-mac.zip",
      verified: "download2.remnote.io/"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://download2.remnote.io/remnote-desktop2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
