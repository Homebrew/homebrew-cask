cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.528.0"

  if Hardware::CPU.intel?
    sha256 "3e327d56fe644f49ad064b88db8bf171e0912e4a394439de4080f6a4d20a1935"
  else
    sha256 "38a94b663c218b5857ca2a9a8302bd35be0aa17bed85dcc971ca701192aea9d5"
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
