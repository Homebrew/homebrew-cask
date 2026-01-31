cask "remnote" do
  arch arm: "-arm64"

  version "1.22.73"
  sha256 arm:   "d355ffad31ff0429e4e2cdcb11e0bd2deaa421793bdafec4f5a8072ae4eebd79",
         intel: "1bdc614a7ab21e3f3a5ad645741bcde792758675c27ae46c455649f58fea3314"

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
