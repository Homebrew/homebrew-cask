cask "moonlight" do
  version "3.1.3"
  sha256 "c1bcc67d3b767d514a2d594aaf531a684709fd8516e39607f22a332cf0435302"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :sierra"

  app "Moonlight.app"
end
