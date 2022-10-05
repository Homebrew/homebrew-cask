cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.39"
  sha256 arm:   "850831699a8b85c822544a22b815e121072dbda008a07fad47a614a44e0c2119",
         intel: "bc21c7b70759a80a819c6d822218acfb77fbe5ad9c3ac0cf8b3f9a9def0a1e18"

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
