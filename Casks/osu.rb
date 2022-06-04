cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.605.0"

  if Hardware::CPU.intel?
    sha256 "ca79f0cdc1cdc57f039d7129c246e8328057c1bd985507a99c9592250ec04cc3"
  else
    sha256 "916c01d101a46f427f5b79bbaa3ed0cfca6bfaa5316f266bae2ded49b0379686"
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
