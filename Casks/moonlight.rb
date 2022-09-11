cask "moonlight" do
  version "4.2.0"
  sha256 "25ee52eedc63f163ffc1dcd208c90ffdcfdc1c65f67812183f00830377866188"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :mojave"

  app "Moonlight.app"
end
