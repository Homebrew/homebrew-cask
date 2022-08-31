cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.18"
  sha256 arm:   "36899a96d983d2142fcdb2ad3c053d1a7762cd41f50fa0bf041bc6bd2fc4bc12",
         intel: "666132fa2e81824676e5949e772142c72e9ccb565fd72af7a1dc929c147f0ece"

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
