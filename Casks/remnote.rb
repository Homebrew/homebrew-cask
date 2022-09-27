cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.33"
  sha256 arm:   "7a28a8f9a9debe79dc9f0cc599012911151f239cbeabb8964c58ad1696897680",
         intel: "bf10d7e9cf89c4a82744d56316d83c4378cf3f0989f32d5b3ac94bdd85450ed7"

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
