cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.321.0"
  sha256 arm:   "5ac3f0fc932ec5aecbd8dda6f220112e0f370d96bffeb33dbd00e53439921ea9",
         intel: "496b7b94d9e775f2bcf95d51d4de0747ff502e4cd1bd545a08c5707d35c0215c"

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
