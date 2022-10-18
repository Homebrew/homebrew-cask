cask "moonlight" do
  version "4.2.1"
  sha256 "85d77081470d36c58e1f09bf53615a1740fc363201ed92407a9e63296467fdd8"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :mojave"

  app "Moonlight.app"
end
