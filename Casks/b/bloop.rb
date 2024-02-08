cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "2a2bababe1d92a8e157a4f999d5268b4bfb25148dd3bb9faa3e8dbc3c084b8b3",
         intel: "e1adfe376768a3809c1f6198508eff95d9aab6d9cb74fe9b54442fc9eeb08c78"

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
