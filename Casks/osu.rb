cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.731.1"

  if Hardware::CPU.intel?
    sha256 "ec625b7e72ee8755a5f8f847626a49908adbcc1c55f29a016bbb3991c493ef6c"
  else
    sha256 "d1801c91052c7e622c7c44a30fe8f95f816a948160723655c9c02d3fcfb20aac"
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
