cask "remnote" do
  arch arm: "-arm64"

  version "1.16.15"
  sha256 arm:   "c64ccb38ca81ba50ad67d5393f2d3c29d64fe4789bb6ad4e5bb8ec9fee14a3be",
         intel: "69bd0907046c1e9b5df8b43ac0f59752c02a103354270da0f0d76169337907b8"

  url "https://download.remnote.io/remnote-desktop/RemNote-#{version}#{arch}-mac.zip",
      verified: "download.remnote.io/"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://download.remnote.io/remnote-desktop/latest-mac.yml"
    strategy :electron_builder
  end

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
