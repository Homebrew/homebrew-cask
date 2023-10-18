cask "moonlight" do
  version "5.0.0"
  sha256 "943e727905cea0c3f6c986f7b1582df1e6fc2506cc18a4a0e824de6b2e507b3d"

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
