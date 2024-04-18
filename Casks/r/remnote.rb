cask "remnote" do
  arch arm: "-arm64"

  version "1.15.18"
  sha256 arm:   "1b1a7e5f8bce52db7bc8ab6d6e7219f26027fca3e9a347eaff84647756041c56",
         intel: "301e448fa77c7b64a6b1f9b1b5544447d8af36420ef30b4a2820620f65383102"

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
