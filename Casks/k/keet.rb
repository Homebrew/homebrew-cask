cask "keet" do
  arch intel: "-Intel"

  version "4.26.3"
  sha256 arm:   "548e5fe67d3d4822a3177fcbc047a0d0ce21d7140453064980351dfa3310e104",
         intel: "70d010aacb8de2f0fb5c005fe6e96b081bdc28474842f72ac03c2a2225e8b139"

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
