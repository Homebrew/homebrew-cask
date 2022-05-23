cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.523.0"

  if Hardware::CPU.intel?
    sha256 "c45cc49c547e6d5785140bd5d7a9fe0f34a3fd80a57216631c1a84942b59879d"
  else
    sha256 "1711a724a6f532db6f6e49ad975abbb115626046fe897ab453954611aa27f530"
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
