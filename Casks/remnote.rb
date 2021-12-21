cask "remnote" do
  version "1.5.1"
  sha256 "72c4d174e490bff3ce5ebff8ce3a67ec3be16cbb7bbdbd171774630784ec140a"

  url "https://download.remnote.io/RemNote-#{version}.dmg"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.io/"

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
