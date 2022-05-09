cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.509.0"

  if Hardware::CPU.intel?
    sha256 "244ec21ee0c2e40f795d1326a02c6d37a1c647e0f8e05c0f48b839527f4d9bc6"
  else
    sha256 "4ca60745d97a3b7d84c2f14b2b3ae7cb11d29a3c7798b778fe2388c97f505720"
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
