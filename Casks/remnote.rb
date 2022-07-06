cask "remnote" do
  version "1.8.1"
  sha256 "f9c26cb9e9649549d9c7d799bc642f65828d191ff50caf21bffd8d25df8a9e69"

  url "https://download.remnote.io/RemNote-#{version}.dmg",
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
