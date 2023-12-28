cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1229.0"
  sha256 arm:   "6efc9dc582af074d52ac619ae382cb0200da095244042561cf359c27b6136a21",
         intel: "af1a38193c5bd862deef34f2fe10422ec0261906d254e99f23287cc228e37a2d"

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
