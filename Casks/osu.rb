cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.717.0"
  sha256 arm:   "6fc8f28577d104c546f6ddc1ac7f783c4bf49b75870fb3a3fa1673cd38c959c3",
         intel: "324c6088829820d80b16d70dedf031b4af5ca5fee3d0fade8cac2a771f87af73"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
