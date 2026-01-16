cask "remnote" do
  arch arm: "-arm64"

  version "1.22.58"
  sha256 arm:   "e245c3d20f10373414664c460a8c3b51be610edbf43649c5c227992fb04a159e",
         intel: "4bfbb5a860b4613e56badfbbc9448ea85501c38b28e2fcdd5118420a32970f0f"

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
