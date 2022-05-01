cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.501.0"

  if Hardware::CPU.intel?
    sha256 "f71c3925f4c5e5d4b3f8e4107739a2d75e91e239c1e9bd3bec2c3a0ba945902c"
  else
    sha256 "08fe4b31b707e5e7626ba1bf441d4d051f16620acb21da7bd92f5465649a2d5c"
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
