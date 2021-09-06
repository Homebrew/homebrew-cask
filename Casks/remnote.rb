cask "remnote" do
  version "1.3.15"
  sha256 "d5021cc81cf69e82efc50e9f076c57215632e93d7d5e4b00fdd3ebad088f11a1"

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
