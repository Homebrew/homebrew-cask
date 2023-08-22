cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.14"
  sha256 arm:   "f4332114566bd551e70e25de88032f6f8bb62677f4b27ea7ac7f1d220aa4c5a5",
         intel: "1795a5a95d92b40e12907d7d2a87d91c81e2454362961ead6f3f960b93556046"

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
