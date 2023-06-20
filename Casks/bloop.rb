cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "0df4a4900deabf3c43d653c702169e3b2be6eb7f56cb4fd1e24f247edeb7a167",
         intel: "5c5b84d8b138fdfb961e03cf03a96900eb12fb614156882386e1c07d92b89582"

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
