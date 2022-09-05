cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.22"
  sha256 arm:   "d3f4a1f99710957e1d710d95897c56c93d5a033a00e45cfcd3c66de977a71391",
         intel: "7984799dea8bc21d1cd848ef9c0eb76145ee84adb709c727c7bf274cc9e7bfcf"

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
