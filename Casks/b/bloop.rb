cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "ad9d71c56f754e451740887e528817265e0a693b2767572269f2a7a68026f442",
         intel: "6e1cb6fb9fec10f83d42eff95e9895fd256727fadfb81805c04addbb214473c9"

  url "https://github.com/BloopAI/bloop/releases/download/v#{version}/bloop_#{version}_#{arch}.dmg",
      verified: "github.com/BloopAI/bloop/"
  name "bloop"
  desc "Code search engine"
  homepage "https://bloop.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "bloop.app"

  zap trash: [
    "~/Library/Caches/ai.bloop.bloop",
    "~/Library/Preferences/ai.bloop.bloop.plist",
    "~/Library/Saved Application State/ai.bloop.bloop.savedState",
    "~/Library/WebKit/ai.bloop.bloop",
  ]
end
