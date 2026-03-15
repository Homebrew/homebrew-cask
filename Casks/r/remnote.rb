cask "remnote" do
  arch arm: "-arm64"

  version "1.24.3"
  sha256 arm:   "7555ae83e2aa3a218640873cf0ee0c5b901cb0837db964e7d81d2bcf5fdfd420",
         intel: "0e1545ffcf0d93590c6ed25a21096a53da01a0696cb1cbfcf37d738ca191a3c3"

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
