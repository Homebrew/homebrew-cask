cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.719.0"

  if Hardware::CPU.intel?
    sha256 "ceaf6e355b2418c43cc0b4ee0a80ff174df9d4c9ee1850bddd199246d1f2cb14"
  else
    sha256 "6e50882db13f566bc9edc70481f3878b9518cc89b030e184355884941eb4c95b"
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
