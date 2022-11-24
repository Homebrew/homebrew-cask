cask "moonlight" do
  version "4.3.1"
  sha256 "777adba6530b247e8fddb3b59765885fbc4cb2a4dd5cfbf635d4ff63217ca2df"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :mojave"

  app "Moonlight.app"
end
