cask "remnote" do
  arch arm: "-arm64"

  version "1.23.7"
  sha256 arm:   "5ea2ea7cad9704b637e455b0769e3cef51e9921f178d4e6d392a4eabf1472c39",
         intel: "be1b95724e34db3374ed261c5951b7e3b38a53b7bb1eaeaca1092ffea55a9690"

  url "https://download2.remnote.io/remnote-desktop2/RemNote-#{version}#{arch}-mac.zip",
      verified: "download2.remnote.io/"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://download2.remnote.io/remnote-desktop2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
