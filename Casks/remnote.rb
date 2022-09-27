cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.35"
  sha256 arm:   "3f842b647d77556a152485419674623acc899cb1603a209411d728c770e8397f",
         intel: "fc55c7b0d2003b3a1357c39f7051ff6443f96eaf2c8ce969c57b520b25c55db7"

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
