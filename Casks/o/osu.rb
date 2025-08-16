cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.816.0-lazer"
  sha256 arm:   "1a5187749bdb776d9f053bc4c6d5ef5190ae8afca52352b226c862ebc54e4bd0",
         intel: "8ed198f468c97299cb1a03aef253e7db80359f295656f21e29b72a4bd6aedf2f"

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
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
