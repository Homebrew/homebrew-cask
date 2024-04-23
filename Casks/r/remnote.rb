cask "remnote" do
  arch arm: "-arm64"

  version "1.16.0"
  sha256 arm:   "6400a49ca4fc24f9cebbd8bba415cbe6bb5aa3c04f6aa4554dfae1068b754016",
         intel: "fdc342b23332248e754c016d3c6f3f1bdd9c17428022eafa1232a81f0dac3b89"

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
