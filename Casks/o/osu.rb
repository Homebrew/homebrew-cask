cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.1115.1"
  sha256 arm:   "f8ee22240d124be18484fd39f77643e5d129c0109506e66cf4f9662fc4bbd862",
         intel: "858a69eea964395c75221b8b608df4fcecf85ed6f8f81fbedacc451cd623d154"

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
