cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.628.0"

  if Hardware::CPU.intel?
    sha256 "0f6341a245b0c858b9b6d725dbe0cb8e5e41367bd7b9bb7de2f990d3c8be5d4b"
  else
    sha256 "8404453f4784dc6d5bca7e5baaaaae900e237081eaa3d37121e29f3609c9ffac"
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
