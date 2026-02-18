cask "remnote" do
  arch arm: "-arm64"

  version "1.23.5"
  sha256 arm:   "c8c84c8f745ce5c8acfce470da0f17ab60b920af8aa6caf0cb16197e9e7089d0",
         intel: "3c8ad9f98b6dc512caae5a558b6e2e032a6c5f86e9087ec44650add4b646cfff"

  url "https://download2.remnote.io/remnote-desktop2/RemNote-#{version}#{arch}-mac.zip",
      verified: "download2.remnote.io/"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://download2.remnote.io/remnote-desktop2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
