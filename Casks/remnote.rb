cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.28"
  sha256 arm:   "df913e05c4212a2b2e55edfd81018fc308951cbc886b6c74c67b4770ff9afd5b",
         intel: "d4874c3899ec9a00fa8e45058c906969ba8e0293f11fecb50b57da23016e7448"

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
