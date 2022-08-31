cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.19"
  sha256 arm:   "8a3fb48b5e34bfa78b9133d89dc3ad857789faffef0b01fad68fa1d15c01a341",
         intel: "4ad5453d6228b0d5e6cf3ef505e660f9c8c757736de5d46e6949d34f7f05a16d"

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
