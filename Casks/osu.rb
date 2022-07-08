cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.709.0"

  if Hardware::CPU.intel?
    sha256 "31465fdfc8cbcf80ef23576f51357c5a78e534f41d5d8b95bf87272f1919e036"
  else
    sha256 "8abd97f987728fe5568d4579354dac0c9f86b14b9495f612714bae2895c18f6a"
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
