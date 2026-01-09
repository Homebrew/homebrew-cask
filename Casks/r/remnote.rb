cask "remnote" do
  arch arm: "-arm64"

  version "1.22.55"
  sha256 arm:   "45ce1f1adf58a28e846d4bfafc594d606d01777d78378b922b812ec6b6db3ef3",
         intel: "266740aeb08ab8371e61822f155985934fa8751a42396170a32475162d9d7143"

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
