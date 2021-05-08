cask "moonlight" do
  version "3.1.2"
  sha256 "8eef120885b69b6216722e73a7dd66ac9a338013e08c83fdfa99d87f258f9576"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :sierra"

  app "Moonlight.app"
end
