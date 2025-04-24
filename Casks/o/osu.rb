cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.424.0"
  sha256 arm:   "ae39af4ecf4be168e22435bb11327f5e367dd4b4ed9620f2caa2ed970759e265",
         intel: "a4f34fec4c386ba51621c11f7e132b204e557b6d3500d4c2ee5aaff19d1c79a7"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
