cask "remnote" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  version "1.27.9"
  sha256 arm:   "d7e29229135271dc74e311b2d58897d4ed5b9693dd0e6ed2a00b275ef38d26fe",
         intel: "fb0c6532239fe2851fcf2e8142619ba5c6c20a0c3729d134393760a0cbe014cd"

  url "https://download2.remnote.io/remnote-desktop2/RemNote-#{version}#{arch}-mac.zip",
      verified: "download2.remnote.io/"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://backend.remnote.com/desktop/mac#{livecheck_arch}"
    regex(/RemNote[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :big_sur

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
