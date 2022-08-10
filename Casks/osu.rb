cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.810.0"

  if Hardware::CPU.intel?
    sha256 "575c1947914cca17bec3c8416502693c0df5044e2767d390eebaf35346c1462c"
  else
    sha256 "40cfe7a963dd12556db453c19db9b23c1c37f0142447128e63b9e8a95c310692"
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
