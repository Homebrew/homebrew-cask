cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.32"
  sha256 arm:   "bc2705d2745d8d73801a973856e692800c973d46541c017efb5dab3fa02b4fd9",
         intel: "7f73b838603d20da0023df5d353fe70fc876260fbbdcbaeb9a8d6a23dd9d7b5d"

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
