cask "remnote" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  version "1.28.32"
  sha256 arm:   "f5e06d2b1a149b6ef99029746f7228f8087f70433b4b7e5957c23bf81d47e017",
         intel: "98650cab551ddcffa07926882a77fd040ecfb14450c5bc4636daf6cdbb90827c"

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
  depends_on :macos

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.remnote.sfl*",
    "~/Library/Application Support/RemNote",
    "~/Library/Logs/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
