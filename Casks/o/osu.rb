cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.624.0-lazer"
  sha256 arm:   "96df88a1bc35d1dab6c82db9dfa00b43b1b199cd31e179dd635818ae92f812a1",
         intel: "6d0d2049d0e2cee75e2ee8ee48deb0f01c90dddb7c71f8d98f5100f13500871e"

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
