cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.31"
  sha256 arm:   "79270731e2e4b72987ab096383657f434082a447a0456be3951a746ea855d69f",
         intel: "fe19e7353f9a9c49e45b435fecdd96e975b8af93524b69a8f649e827ad255a32"

  url "https://download.remnote.io/RemNote-#{version}#{arch}.dmg",
      verified: "remnote.io"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://s3.amazonaws.com/download.remnote.io/latest-mac.yml"
    strategy :electron_builder
  end

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
