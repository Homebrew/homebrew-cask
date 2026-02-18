cask "remnote" do
  arch arm: "-arm64"

  version "1.23.6"
  sha256 arm:   "f6ff7d66d8cb1a3a0c430668df274e364d9baf5d4ab75a8dea36076d0b28bda1",
         intel: "78b2386ae449bff6e842872a6af3de5330f174cd104300d485b2eeea3543d3fe"

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
