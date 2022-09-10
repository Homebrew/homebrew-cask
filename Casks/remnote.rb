cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.24"
  sha256 arm:   "9eb7a5159ac380e9249e95d186cb92e226e55b4cbe8e471bb5d8fe3d3ed22d6e",
         intel: "110790e0f4c54183dd526812b7311c6b6a44a6cd09492ce45451c1245926e6dc"

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
