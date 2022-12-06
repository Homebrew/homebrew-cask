cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1205.0"
  sha256 arm:   "2386670092422bc60af1a228082ca0489588bdef4541b221477853b79c4d45a6",
         intel: "e61c2a49bca848287d5cca82531a22889ac3f63b13d1d28c371b3871943eeb27"

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
