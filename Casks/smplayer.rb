cask "smplayer" do
  version "21.8.0"
  sha256 "f08c20e20090ddc1633fda543d2ec5d3428ad92ebecb864ef239c5a7de15812b"

  url "https://github.com/smplayer-dev/smplayer/releases/download/v#{version}/smplayer-#{version}.dmg",
      verified: "github.com/smplayer-dev/smplayer"
  name "SMPlayer"
  desc "Free Media Player with built-in codecs"
  homepage "https://www.smplayer.info/"

  app "SMPlayer.app"
end
