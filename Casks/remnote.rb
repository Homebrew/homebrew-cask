cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.34"
  sha256 arm:   "652ed7c52d62473a263a67398f5af65c13cc5b3ee5d454494614387564993d17",
         intel: "a8dbb9dc08fbd30e6d51f35e4a9dd4bbbe771a1bd3acbf8d2d69e886ea5bbf3d"

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
