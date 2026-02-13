cask "remnote" do
  arch arm: "-arm64"

  version "1.23.3"
  sha256 arm:   "202abeb913645091fd4ce9536992340e648e91b8174ed07ec457f83266ae4893",
         intel: "47391b3ab97f463796da7d38a206f3cff244100d77e70d3021a2fbbfc8a8ea10"

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
