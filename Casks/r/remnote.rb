cask "remnote" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  version "1.30.3"
  sha256 arm:   "ae685e55c5b4cc9578294a021c7053bf60b9e616e1a5e1f47cb901cee504b0fc",
         intel: "6cbd3ec455d6ae1d7ac09a03ca43249b37aa6b1f5125fe42de26649519d29d95"

  url "https://download2.remnote.io/remnote-desktop2/RemNote-#{version}#{arch}-mac.zip"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://backend.remnote.com/desktop/mac#{livecheck_arch}"
    regex(/RemNote[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "RemNote.app"

  uninstall quit: "io.remnote"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.remnote.sfl*",
    "~/Library/Application Support/RemNote",
    "~/Library/Logs/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
