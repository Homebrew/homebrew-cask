cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "c26fd2ed346e80d1a5cf8e5137fdf776afb480ed05d31f2531d33740acaae87d",
         intel: "df0bc6a8224b6b4ec1b5711d62a49dabada3bedd4b4b6e502841658195b0fbfb"

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
