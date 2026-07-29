cask "keet" do
  arch intel: "-Intel"

  version "4.20.0"
  sha256 arm:   "a0a4ce0e2fab59757b845a8f0e94a96cc99623d258b0e62c645b2fdffcd3f722",
         intel: "9cec9b64248e6de1a24641dc9a6bdcd05b4a6a655f02b884e9bab06c02d67832"

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
