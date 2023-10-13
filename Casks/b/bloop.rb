cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "f10e9869f483ae8bf6f9e44b11be7a3b84c6653894bf72302abc4879a5332483",
         intel: "d8079ca8e097438b6492ff424aefc7adf7e93e7f5fc60d063a54907f70b50106"

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
