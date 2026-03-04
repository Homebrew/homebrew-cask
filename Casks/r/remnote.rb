cask "remnote" do
  arch arm: "-arm64"

  version "1.23.12"
  sha256 arm:   "0b6611427e4697e1bb6742963a8ee2ad4d1d35033bf0e0835e001860a329cd08",
         intel: "ca02123c78e67604792e90ca68a81143bf0997c58cda4de0da54e2681fee1936"

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
