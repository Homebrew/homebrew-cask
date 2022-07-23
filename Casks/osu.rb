cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.723.0"

  if Hardware::CPU.intel?
    sha256 "878418bd8cbc58e4872f59d723d7ce61a970f20d8738ed63a8bf6054e976d9ee"
  else
    sha256 "8a10c3d27564f2fdddf94ea7b5d24be21a534522144718d6447a76364fb7c387"
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
