cask "remnote" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  version "1.27.30"
  sha256 arm:   "995d829c8649c3cea268a4027ea70abe9d24cf66e67b676b87f09a0a2fce00dc",
         intel: "e6556afe9594a9646e85d841c1d2fd76532158eb8eabdc54ac35bb7034de63e7"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.remnote.sfl*",
    "~/Library/Application Support/RemNote",
    "~/Library/Logs/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
