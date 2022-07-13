cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.709.1"

  if Hardware::CPU.intel?
    sha256 "8460fda5ab7f83f2c5b00f0540830bffa7291d02fb8aaf117defeb7fea28caca"
  else
    sha256 "b963ea9a5d8f5cec2d74b5a5f9d7ebf609c541ece834ffc94a050c2a598f32f4"
  end

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
