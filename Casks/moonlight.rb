cask "moonlight" do
  version "3.1.4"
  sha256 "e49cd5f81989b21a14a1536122a516b32c90e55a8c714f76693a6b41a359a0ad"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :sierra"

  app "Moonlight.app"
end
