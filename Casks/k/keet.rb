cask "keet" do
  arch intel: "-Intel"

  version "4.21.0"
  sha256 arm:   "b45bb82a8621e6efcff3a1ca4c7637a4bbf64349f0660aefec0090c1f12b10f6",
         intel: "4c9713b9fda0bed31b9142cc3c7cc6bde333b3562545eb6a0a9b7506923f3b09"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Keet.app"

  uninstall quit: "io.keet.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.keet.app.sfl*",
    "~/Library/Application Support/Keet",
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Preferences/io.keet.app.plist",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
