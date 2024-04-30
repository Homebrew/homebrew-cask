cask "remnote" do
  arch arm: "-arm64"

  version "1.16.5"
  sha256 arm:   "a27dfe4e807f772d71ce42c2735179e11b39a46f1940b6e83011ca3d8fb5d725",
         intel: "f5e7802d9659476f2dc22969ce8a5aa67f107d9054326a180d69cb96a2b540df"

  url "https://download.remnote.io/remnote-desktop/RemNote-#{version}#{arch}-mac.zip",
      verified: "download.remnote.io/"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://download.remnote.io/remnote-desktop/latest-mac.yml"
    strategy :electron_builder
  end

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
