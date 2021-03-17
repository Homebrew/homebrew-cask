cask "moonlight" do
  version "3.1.0"
  sha256 "7ddc42ac65f21346958649cc3136dbd9b603b2ab30cd9d39b32f6d679296d3b1"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  appcast "https://github.com/moonlight-stream/moonlight-qt/releases.atom"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :sierra"

  app "Moonlight.app"
end
