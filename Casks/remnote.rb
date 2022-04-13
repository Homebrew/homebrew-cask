cask "remnote" do
  version "1.5.3"
  sha256 "7e1fee3745c3daa1ccc5a5863c5dc99305262bd37c03547f1bb238cb6f80bdab"

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
