cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.5"
  sha256 arm:   "05048ffe77a20fcd60a5e1d433dfaf119471185915192b1669594e05f40e1284",
         intel: "40aadfb336ab131e833e379c0c66f85421dd5a933230c75c7c0613dde4b7aea6"

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
