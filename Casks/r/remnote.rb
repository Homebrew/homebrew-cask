cask "remnote" do
  arch arm: "-arm64"

  version "1.22.77"
  sha256 arm:   "f1a202a9f9652605038dc637e2edc6708e73698897e28efd062a1a440d9b2502",
         intel: "707fcb930056934d86956b1bc5da6d74e5c198c42838e6ff2a635bc874e5b6b6"

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
