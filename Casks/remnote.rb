cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.43"
  sha256 arm:   "294aa07e0c1774a693f8d9305f4df409dccb3fb5791869dbbbb8ede20e53aa10",
         intel: "32a7e5fc75104f3e4ac56ce0b0f2d10cc4f4290e1a35d074bb32aee063645636"

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
