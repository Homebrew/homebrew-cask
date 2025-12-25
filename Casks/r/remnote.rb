cask "remnote" do
  arch arm: "-arm64"

  version "1.22.49"
  sha256 arm:   "95907e59bf220f6855e3a8fc295589b4bb01375f60c8df031466e7e015161674",
         intel: "582900d98ee05245aa205fde4a6ba60e3f4476769eeec6fc66291044f77574dc"

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
