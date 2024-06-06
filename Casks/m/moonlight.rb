cask "moonlight" do
  version "6.0.0"
  sha256 "50ff0d886fcb66b4c76d2d4493e49b0fc8d8104ac98a927e76a262ea5b67fbeb"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :mojave"

  app "Moonlight.app"

  zap trash: [
    "~/Library/Caches/Moonlight Game Streaming Project",
    "~/Library/Preferences/com.moonlight-stream.Moonlight.plist",
    "~/Library/Saved Application State/com.moonlight-stream.Moonlight.savedState",
  ]
end
