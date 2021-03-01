cask "moonlight" do
  version "3.0.0"
  sha256 "bf3bd9739ce12191658ef688a0ed0f7777966b9e5d765012555d6a7a34011b78"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  appcast "https://github.com/moonlight-stream/moonlight-qt/releases.atom"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :sierra"

  app "Moonlight.app"
end
