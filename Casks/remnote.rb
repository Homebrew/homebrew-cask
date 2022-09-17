cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.27"
  sha256 arm:   "021917c50271485a513a724a4c760848bbd5fbd2b5d53c3fc5bdb2e1f907baf9",
         intel: "3b666ce5f1011b97b550551e2976ba11255e1acee308db145a982ccc462db53f"

  url "https://download.remnote.io/RemNote-#{version}#{arch}.dmg",
      verified: "remnote.io"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://s3.amazonaws.com/download.remnote.io/latest-mac.yml"
    strategy :electron_builder
  end

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
