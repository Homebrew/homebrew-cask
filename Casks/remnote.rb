cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.20"
  sha256 arm:   "cf8c8e76dd15b1600610b10f7c23d18f80ffbf0cbb152f42714bf2538082d80b",
         intel: "40cf7d4bd903f7dd364060f59daeaa3b3560896cd92accbc8282d134ad3649ce"

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
