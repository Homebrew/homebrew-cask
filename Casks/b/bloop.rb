cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "a813798ab39bf4685325c6283526b758ed7cc51fcff3a3a424faa5821fdb5def",
         intel: "698a9e743aa7e74edd2088c6c103af223ef11c3c5e7ce4b6110a19ada5e2d531"

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
