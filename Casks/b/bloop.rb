cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "d7dddf222ed2cd249c2cd77bae1ea171d83204d423cc8c2ff4f7b7198c504953",
         intel: "d691b04e0dc1210c52a3c2a9797652d8e1424a0ef2899fc430d0f7ff32e50466"

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
