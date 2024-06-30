cask "moonlight" do
  version "6.0.1"
  sha256 "39996bd3b719d5484fae778916080f2d666bda5dc9067f14f072c72775dc7f61"

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
