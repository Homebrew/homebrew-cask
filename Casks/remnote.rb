cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.40"
  sha256 arm:   "38f857fdf89fa89ada3119f627295c7ba99387b5864de78056a798ee39350ca3",
         intel: "4ef72d1a1c11187bd04fecc9172b70c73d24d0b3add2c5898f30b005af4604ef"

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
