cask "remnote" do
  version "1.8.7"
  sha256 "a5d76335eabd31f61e5528e3c1d9281c72f23930eb9515f0e6a27b91106490e6"

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
