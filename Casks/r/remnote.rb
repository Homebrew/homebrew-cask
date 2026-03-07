cask "remnote" do
  arch arm: "-arm64"

  version "1.24.0"
  sha256 arm:   "6d9b5128e6a8e89abb437194c2a35742c61eecebec6e3688d14aa23e3f3fb062",
         intel: "ec31f23371ee352e6b7fdbb0d4bc49a96ec16198304a56c66e6aaf390a09036f"

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
