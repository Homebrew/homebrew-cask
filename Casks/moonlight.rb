cask "moonlight" do
  version "3.2.0"
  sha256 "b18aff6e43542292959a28198d7048756e5d59d68770c0e3f8b1d0b2da4f8797"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :mojave"

  app "Moonlight.app"
end
