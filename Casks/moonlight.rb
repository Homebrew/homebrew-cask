cask "moonlight" do
  version "4.3.0"
  sha256 "4f3cd19edbb22296a202b6eb5b5c3d8944018197a36670b4b11e3e725b7e149e"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :mojave"

  app "Moonlight.app"
end
