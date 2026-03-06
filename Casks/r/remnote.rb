cask "remnote" do
  arch arm: "-arm64"

  version "1.23.13"
  sha256 arm:   "5fc3a6a9456ad583d54464b370e281ed7ecb795e95cbc7bffd71992e3d62c420",
         intel: "82ce2fe97435d3fa6868ecc4ab27ac1e5b21c7344cf057ac0d8cbed044cedb92"

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
