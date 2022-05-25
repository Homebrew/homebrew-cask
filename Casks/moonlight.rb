cask "moonlight" do
  version "4.1.0"
  sha256 "cbe9e9a3178460bdfd82c18aebbb079e9f0949a2746ca12d5bc106ae990d87fd"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :mojave"

  app "Moonlight.app"
end
