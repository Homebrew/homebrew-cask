cask "remnote" do
  arch arm: "-arm64"

  version "1.15.26"
  sha256 arm:   "52fbf7dfa5796ddd28040f0ca735dbf3efbde1d489aa4f7a40c61ba9c02dfe63",
         intel: "97478094e879b25940b9aea1429eb5f4a07f1ee37c1d5e4ecc24c66982f24c68"

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
