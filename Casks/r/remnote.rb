cask "remnote" do
  arch arm: "-arm64"

  version "1.22.56"
  sha256 arm:   "9c4318c9c95185f583df0e9fd155542695f461e738c90ad23f13933af134bfbd",
         intel: "599a67f398b0ed42c160e08990f9d4b10bf5b768b8a7ba3adef1df91516bc267"

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
