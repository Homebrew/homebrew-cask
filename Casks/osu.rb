cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.403.0"
  sha256 arm:   "5f394591c111994951814a7a5b32addc76166b6cb550682b72e05145a9bc8741",
         intel: "cb2471dfec501b59637935807065ac5ec519df9108d58aa09dd0205fc8b74d75"

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
