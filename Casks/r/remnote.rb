cask "remnote" do
  arch arm: "-arm64"

  version "1.22.51"
  sha256 arm:   "798a9dfbc142e18f512bdda053b89ef7ab57d1334ec985e9ee97eeece67127d4",
         intel: "e52612397f15926d731528fc2560e9dda62d0beccbbd161a4c0ca7971bb116b5"

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
