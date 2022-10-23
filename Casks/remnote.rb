cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.46"
  sha256 arm:   "79eba5acd545a48e56c01f98ecc1f4e58b3d40af8ce2d138413fed623dc6f256",
         intel: "61819ffa95840adabc11f74358ec30e248da57d5f48a4fb42a80c5062dd96f68"

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
