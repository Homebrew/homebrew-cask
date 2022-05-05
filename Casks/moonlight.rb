cask "moonlight" do
  version "4.0.0"
  sha256 "e6a75b11dfb1aa46cea6b374ede0dc63ef3099900bf6d7aad2f6b1050a428d1b"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :mojave"

  app "Moonlight.app"
end
