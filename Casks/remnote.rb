cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.23"
  sha256 arm:   "8ea128de326465ecd457344ed8d5263656f2b042fbe8065b36544cfe4ad93cac",
         intel: "7c1cb7977399cfd59943f4d24a40213b020647b57269d932e48438d4c62c6da9"

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
