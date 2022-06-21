cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.621.0"

  if Hardware::CPU.intel?
    sha256 "caf3540eca060c3a2cfc082774f25e5ddff62dd7c4c507d26621cbcffdf4f08c"
  else
    sha256 "8178451cbfd757427f68abc4c20c1125359796d5bab150278507b3175edeba13"
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
