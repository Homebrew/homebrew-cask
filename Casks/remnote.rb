cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.50"
  sha256 arm:   "8f183c7ebe48d259a2e6221d930418a98642fa641126a018c504968e1f1b2107",
         intel: "f1a3614eb495352c257e3c434f4be281994460033d123591532e3815abad8be4"

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
