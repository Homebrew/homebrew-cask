cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.911.0"
  sha256 arm:   "b28c58e5c909ad3a92ec54edc80a3515ae29b087e053a810ee1aca523cb587f7",
         intel: "cf4c2f5dde0aab2b66f13eec39e8e184e4e5397405e0c61ffd50b3082fa4058b"

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
