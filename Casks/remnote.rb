cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.51"
  sha256 arm:   "691f61d623a6be1e3299f2b0e166a507155858f336a7276f11a15408d6cd3d0f",
         intel: "fd425ec9ceed0c26b617a3e74345f66b02de1361e547f5169499d5ee2b317d3d"

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
