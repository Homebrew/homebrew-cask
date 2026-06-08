cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.518.0-lazer"
  sha256 arm:   "16fa4baff9537ec2d0f4a20ad6e528f476871f668b1e2cbfc79a951fcc4b12d1",
         intel: "2ccf20594018ecd016b8c9a4cccc867438b2e6e52afda4d738ef4c3d4486e8d7"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-\w+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "osu@tachyon"
  depends_on :macos

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
