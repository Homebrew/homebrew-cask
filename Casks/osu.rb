cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.630.0"

  if Hardware::CPU.intel?
    sha256 "2145134f5c30a2cbbd1f626752cc04e923dcac06bd0773fc0a3f880c84546e99"
  else
    sha256 "bc3d7c5cc2764fddb051903eb6b37b958ce6e949cb0381cd05ba64094436cf2d"
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
