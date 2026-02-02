cask "remnote" do
  arch arm: "-arm64"

  version "1.22.75"
  sha256 arm:   "a37da2c2082971e0ece2cdc7e5a9e50f4d661a76ee2f5ded99051bc809dfc676",
         intel: "5c5858bc9d2da8b365c340da90896853f2114b6b1b6a62ede8f07108fbca8852"

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
