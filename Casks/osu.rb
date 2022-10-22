cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1022.0"
  sha256 arm:   "77cab34d103b0ca609e14551e1d98d47c44de7b916ef249f68940d8fa749dd2f",
         intel: "8ac8fa3f11684558e6140aab9b046a41e8642a85e55072008da801e621fe6f26"

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
