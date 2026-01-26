cask "remnote" do
  arch arm: "-arm64"

  version "1.22.68"
  sha256 arm:   "2a2a2d8850c7e39be069dba7e40249740ab158484570d8d47e759c903dad1abb",
         intel: "8dafe67e78f1b1486aceeb9d21079b3da65f79613a507b94f66bd8d3d184be6c"

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
