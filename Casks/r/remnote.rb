cask "remnote" do
  arch arm: "-arm64"

  version "1.22.80"
  sha256 arm:   "e6a6300711bc10c7bf206d02b8f287be4fa066354bac4d79e70f295936f7c97b",
         intel: "3218085ed2acf252bf7e5aeb9b0bb6912e722cd788061dd220e75a310a115394"

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
