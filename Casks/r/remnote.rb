cask "remnote" do
  arch arm: "-arm64"

  version "1.23.2"
  sha256 arm:   "d4fe9d0e1f5f42c30c0dccc3ac48ddb36664a7df059984f946867b8bd4bcd9ef",
         intel: "b9062ef041fe7640c40f786e537054aacb57ab9fbcabe9361527ab3824548866"

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
