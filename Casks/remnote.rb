cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.42"
  sha256 arm:   "4b2bb56cbacdbda2278fcd5760ab3175706ac8d0f103a949f483851ea3337b5f",
         intel: "f1ee1987d0c584a0d9a9c7c05df34b0ca4e9c2e470352d68bb896d2da2a424a9"

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
