cask "remnote" do
  arch arm: "-arm64"

  version "1.16.4"
  sha256 arm:   "08e0e0159afa526a889679b9354b4887db7e154c9efb24ee7dcbf015708fd178",
         intel: "0380c60ee92e5b0a92792d2b7b4fd13aa357e200f9b28b6d643126ace3808a95"

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
