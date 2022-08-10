cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.810.1"

  if Hardware::CPU.intel?
    sha256 "32ea84e1a37e0eb8b22f1f051ddd7035c1d1d2f292a752b03936563bf1e984a6"
  else
    sha256 "84d54938bb7d7fc3300d98151e08c0839b5c48a71506e4b952dc0a89302380df"
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
