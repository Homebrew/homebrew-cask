cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.605.1"

  if Hardware::CPU.intel?
    sha256 "0dc2b03370cd62fe3520b20426b808da5164e7c9fd146b18bd83302a5d1c486c"
  else
    sha256 "44a2d0e8a3b7d6e82eadc5729ae011c33a0c3423fccf79d0c4a2ef40d1ab888d"
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
