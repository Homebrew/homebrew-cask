cask "moonlight" do
  version "3.1.1"
  sha256 "b4f2d74a45ca143fa54f2f6b18912ded9a1fb75eaa9a1e2b3d9f56037f562442"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :sierra"

  app "Moonlight.app"
end
