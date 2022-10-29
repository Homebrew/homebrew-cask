cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.49"
  sha256 arm:   "d6138ccb698f7f2ea7bcf441f7125910438772424e05502adb17cd8931814a41",
         intel: "90dd2ab61b454ca4a420f3b60f3038e64dd6dc26e086f5fc026f9aad41bc7295"

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
