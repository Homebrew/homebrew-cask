cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.711.0-lazer"
  sha256 arm:   "fc40cf7cc672e5f9866ae097aa2f8f70fdee03c7a743cd1d8c99e81f59c85a17",
         intel: "0ab8f8d0d90a6aca9cd891752de2703a59c2cc7c6c3e2286efb48a4e8f034bff"

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
