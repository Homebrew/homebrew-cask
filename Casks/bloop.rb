cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "5ceb05c486c41a2cc7629e47e0242a73fcf98a35a9bb3c2a75cd93f792b279b6",
         intel: "afd7f7e2ae756cb3390a8b129bc4da478877f56b2d8bd063093c519218af00bf"

  url "https://github.com/BloopAI/bloop/releases/download/v#{version}/bloop_#{version}_#{arch}.dmg",
      verified: "github.com/BloopAI/bloop/"
  name "bloop"
  desc "Code search engine"
  homepage "https://bloop.ai/"

  depends_on macos: ">= :big_sur"

  app "bloop.app"

  zap trash: [
    "~/Library/Caches/ai.bloop.bloop",
    "~/Library/Preferences/ai.bloop.bloop.plist",
    "~/Library/Saved Application State/ai.bloop.bloop.savedState",
    "~/Library/WebKit/ai.bloop.bloop",
  ]
end
