cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.615.0"

  if Hardware::CPU.intel?
    sha256 "bd2250c36c255c1d51e42183408362dd562fddfa3838a1ac2413fe01fd4e722a"
  else
    sha256 "a397fff60469c5ac6e0e458f7167ba73cdb4482ee4fde37cc35115e2060c99a5"
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
