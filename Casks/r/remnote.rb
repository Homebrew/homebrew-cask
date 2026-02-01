cask "remnote" do
  arch arm: "-arm64"

  version "1.22.74"
  sha256 arm:   "1cbe3b0019d23bbfaece2ed2d1c19bbbac16c6a621b91c9af06ecb917561417c",
         intel: "1675b17521a5dc0db8b30f7770f28782e70ff42c05671b30f84fa1716fcb4377"

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
