cask "remnote" do
  arch arm: "-arm64"

  version "1.16.17"
  sha256 arm:   "21f0888ebfa835134713f852b78ee49465499bceb68d0b6099642c149f73e247",
         intel: "8c46cda048beffb826d7c0368eb75671b1dd85d1eb5e50ce8e512b79b1083ac4"

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
