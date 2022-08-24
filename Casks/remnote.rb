cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.17"
  sha256 arm:   "e03df3f1e18d5e4f2d9edd04a93c9cb1a8991e8b5fc926b5bb0bf3ff03ed4bf2",
         intel: "6ca0a1a6555e843322f9d27c05c4c1039ea71bef2b15d224cc71a6ee63aa5aa1"

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
