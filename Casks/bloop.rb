cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.12"
  sha256 arm:   "ddd4e069c8df8753e056afd2759713382ca647a43634f49e209c4aa76742f581",
         intel: "bfd39e3448e0b44932b5ff10d9ab639d1d7ede980b1336780e30b3ddf5dc003f"

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
