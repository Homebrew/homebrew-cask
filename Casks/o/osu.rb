cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.1115.2"
  sha256 arm:   "d3a8b91487e701e73bfe799b38c337447da8c38476ed0ad90b9fd26fb5afc838",
         intel: "52acf773ba919d573e9cede60e9df23f779f642802dd52d343aea57b93db0d50"

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
