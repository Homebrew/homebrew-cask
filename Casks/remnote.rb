cask "remnote" do
  arch arm: "-arm64"

  version "1.8.52"
  sha256 arm:   "18b3e49babdb8a789d93dcc3f1ff403f7c9f2209bb6859c971e4df6c51bfa363",
         intel: "6fe3db58df49b19b32448eaf1f6bffa408d6db6161486f5787ef7c0357f2a07b"

  url "https://download.remnote.io/RemNote-#{version}#{arch}.dmg",
      verified: "download.remnote.io/"
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
