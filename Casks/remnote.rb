cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.21"
  sha256 arm:   "94cfca3b49dd7f48c0015c16870d496c6fe4c13e144cb5236bd5610794c7d040",
         intel: "faab83de71426fd5fd9cff65b215385bf3b3b4abea12af28739754e56c849b15"

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
